<?php
require('../../db_connect.php');

// //ログインされていない場合は強制的にログインページにリダイレクト
// if (!isset($_SESSION["login"])) {
//     header("Location: agent_login.php");
//     exit();
// }
$id = $_GET['id'];
// var_dump($id);
//エージェント情報
$stmt = $db->prepare('select * from agents where id = :id');
$stmt->bindValue(':id', (int)$id, PDO::PARAM_INT);
$stmt->execute();
$agent = $stmt->fetch(PDO::FETCH_ASSOC);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $form['month'] = filter_input(INPUT_POST, 'month', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
} else {
    $form['month'] = Date('Y-m');
}



try {

    if (isset($form["month"])) {
        if (!$form["month"]) {
            $month = "all"; //全てを表示
        } else {
            $month = $form["month"];
        }
        // セレクトボックスで選択された値を受け取る
    } else {
        $month = Date('n');
    }
    // var_dump($month);
    // echo "<pre>";
    // var_dump($result);
    // echo "</pre>";
    // 全ての問い合わせ
    $stmt = $db->prepare('SELECT
S.created AS 問い合わせ日時, 
S.name AS 氏名, 
S.email AS メールアドレス, 
S.tel AS 電話番号, 
S.collage AS 大学,
S.department AS 学科,
S.class_of AS 何年卒,
SC.id AS 問い合わせID,
SC.valid_status_id AS 無効判定
FROM students AS S, students_contacts AS SC WHERE S.id = SC.student_id AND SC.agent_id = :agent_id ORDER BY S.created desc');
    if (!$stmt) {
        die($db->error);
    }
    $stmt->bindValue(':agent_id', $id, PDO::PARAM_INT);
    $stmt->execute();
    $all_contact = $stmt->fetchAll(PDO::FETCH_ASSOC);


    // 重複検査

    foreach ($all_contact as $contact) {
        $stmt = $db->prepare(
            'SELECT count(*) FROM students AS S, students_contacts AS SC WHERE (S.email = :email OR S.name = :name OR S.tel = :tel) AND S.id = SC.student_id AND SC.agent_id = :agent_id ORDER BY S.created desc'
        );
        if (!$stmt) {
            die($db->error);
        }
        $stmt->bindValue(':email', $contact['メールアドレス'], PDO::PARAM_STR);
        $stmt->bindValue(':name', $contact['氏名'], PDO::PARAM_STR);
        $stmt->bindValue(':tel', $contact['電話番号'], PDO::PARAM_STR);
        $stmt->bindValue(':agent_id', $id, PDO::PARAM_INT);
        $stmt->execute();
        $duplicate_cnt[$contact['問い合わせID']] = ((int)$stmt->fetchColumn()) - 1;
        // 重複件数↑
    }

    if ($month != "all") :
        $stmt = $db->prepare('SELECT 
    DATE_FORMAT(S.created, "%Y-%m") AS prepare_month,
    DATE_FORMAT(S.created, "%m") AS 月,
	S.created AS 問い合わせ日時, 
	S.name AS 氏名, 
	S.email AS メールアドレス, 
	S.tel AS 電話番号, 
	S.collage AS 大学,
	S.department AS 学科,
	S.class_of AS 何年卒,
    SC.id AS 問い合わせID,
    SC.valid_status_id AS 無効判定
    FROM
    students AS S, students_contacts AS SC, agents AS A
    WHERE 
    S.id = SC.student_id
    AND
    SC.agent_id = A.id
    AND
    -- A.id = :agent_id
    SC.agent_id = :agent_id
    AND
    DATE_FORMAT(S.created, "%Y-%m") = :form_month
    ORDER BY 問い合わせ日時 desc
    ');

        $stmt->bindValue(':form_month', $form['month'], PDO::PARAM_STR);
        $stmt->bindValue(':agent_id', $id, PDO::PARAM_INT);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $cnt = count($result);

    else :
        $result = $all_contact;
        $cnt = count($result);
    endif;
    // echo "<pre>";
    // var_dump($cnt);
    // echo "</pre>";
} catch (PDOException $e) {
    print('Error:' . $e->getMessage());
    die();
}

// if (empty($id)) {
//     exit('IDが不正です。');
// }

// 無効化申請中/無効化承認済みをタイトルに表示
function set_valid_status($valid_status)
{
    if ($valid_status === 1) {
        return '';
    } elseif ($valid_status === 2) {
        return '申請中';
    } elseif ($valid_status === 3) {
        return '承認済み';
    } else {
        return 'エラー';
    }
}

// echo "<pre>";
// var_dump($duplicate_cnt);
// echo "</pre>";

?>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>学生情報一覧</title>
    <link rel="stylesheet" href="../css/reset.css" />
    <link rel="stylesheet" href="../css/style.css" />
    <link rel="stylesheet" href="../../agent/table.css">
    <link rel="stylesheet" href="../../agent/agent_students_all.css">
</head>

<body>

    <header>
        <div class="header-inner">
            <h1 class="header-title">CRAFT管理者画面</h1>
            <nav class="header-nav">
                <ul class="header-nav-list">
                    <a href="../index.php">
                        <li class="header-nav-item select">エージェント一覧</li>
                    </a>
                    <a href="../add/agentAdd.php">
                        <li class="header-nav-item">エージェント追加</li>
                    </a>
                    <a href="../tags/tagsEdit.php">
                        <li class="header-nav-item">タグ一覧</li>
                    </a>
                    <a href="../contact/contact.php">
                        <li class="header-nav-item">問い合わせ一覧</li>
                    </a>
                    <a href="../login/loginInfo.php">
                        <li class="header-nav-item">管理者ログイン情報</li>
                    </a>
                    <a href="../login/logout.php">
                        <li class="header-nav-item">ログアウト</li>
                    </a>
                </ul>
            </nav>
        </div>
    </header>
    <a href="../index.php">&laquo;&nbsp;エージェント一覧に戻る</a>
    <main class="main" >
    <!-- <div class="all_wrapper">
        <div class="right_wrapper"> -->
            <h1 class="students_all_title"><?php echo h($agent['insert_company_name']); ?></h1>
            <div class="sum_inquiry_wrapper">
                <p class="sum_inquiry"><span>
                        <?php if ($month != "all") :
                            echo ($form['month']) . '月';
                        else : echo '全て';
                        endif; ?>
                    </span>の問い合わせ件数: <span>
                        <?php echo $cnt ?>
                    </span>件</p>
            </div>
            <form action="" method="POST">
                <input type="month" name="month" value="<?php echo $form['month']; ?>">
                <input type="submit" name="submit" value="月を変更" />
                <span>※カレンダーの削除ボタンで全てを表示</span>
            </form>
            <?php if ($cnt === 0) : ?>
                <p class="error">ヒットしませんでした。違う月を改めて指定してください</p>
            <?php else : ?>
                <table cellspacing="0">
                    <tr>
                        <th>問い合わせ日時</th>
                        <th>氏名</th>
                        <th>大学</th>
                        <th>学部/学科</th>
                        <th>何年卒</th>
                        <th>ID</th>
                        <th>詳細</th>
                        <th>無効申請</th>
                        <th>重複</th>
                    </tr>
                    <?php foreach ($result as $column) : ?>
                        <tr>
                            <td><?php echo ($column['問い合わせ日時']); ?></td>
                            <td><?php echo ($column['氏名']); ?></td>
                            <td><?php echo ($column['大学']); ?></td>
                            <td><?php echo ($column['学科']); ?></td>
                            <td><?php echo ($column['何年卒']); ?></td>
                            <td><?php echo ($column['問い合わせID']); ?></td>
                            <td><a class="to_students_detail" href="contactDetail.php?id=<?php echo ($column['問い合わせID']); ?>">詳細</a>
                            </td>
                            <td><?php echo set_valid_status($column['無効判定']); ?></td>
                            <td>
                                <?= $duplicate_cnt[$column['問い合わせID']] ?>件
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </table>
            <?php endif; ?>
        <!-- </div>
    </div> -->
    </main>
</body>

</html>