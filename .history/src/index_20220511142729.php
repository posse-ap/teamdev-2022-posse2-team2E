
 
<?php 
require('db_connect.php');
// var_dump('接続成功');
?> 


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/src/user/reset.css">
    <link rel="stylesheet" href="/src/u">
    <title>CRAFT</title>
    <script
src="https://code.jquery.com/jquery-3.3.1.min.js"
integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
crossorigin="anonymous"></script>
</head>
<body>
    <!-- ヘッダー -->
    <header>
        <img src="/src/user/logo.png" alt="">
        <nav>
            <ul>
                <li><a href="">就活サイト</a></li>
                <li><a href="">就活支援サービス</a></li>
                <li><a href="">自己分析診断ツール</a></li>
                <li><a href="">ES添削サービス</a></li>
                <li><a href="">就活エージェント</a></li>
                <li><a href="">就活の教科書とは</a></li>
                <li><a href="">お問い合わせ</a></li>
            </ul>
        </nav>
    </header>

    <wrapper>
        <div class="first_message">
            <h1>CRAFT</h1>
            <h2>失敗しないエージェント選びを</h2>
            <p>就活ドットコムだからこそできる、フラットな視点から比較、一括問い合わせまで</p>
        </div>

        <div class="process">
            <p>絞り込む</p>
            <div class="arrow"></div>
            <p>比較する</p>
            <div class="arrow"></div>
            <p>キープする</p>
            <div class="arrow"></div>
            <p>お問い合わせる</p>
        </div>
        
        <div class="q_and_a">
            <p>Q.いくつのエージェントを問い合わせればいいの？</p>
            <br>
            <p>A. <span class="multiples">複数</span>のエージェントに問い合わせることをおすすめします。</p>
            <p>理由としては、以下のようなものが挙げられます。</p>
            <br>
            <br>
            <div class="reason">
            <p>・目的に合わせてエージェントを使い分けられる</p>
            <p>・様々な視点からアドバイスをもらえる</p>
            <p>・応募できる求人の幅を広げることができる</p>
            </div>
        </div>
        
            <container class="filter" id="js-filter">
                <div class="filter_left_wrapper">
                    <div class="filter-cond" id="filter_side">
                        <div class="agents_type">
                            <p class="filter_num"><span>5</span>件</p>
                            <p>エージェントのタイプ</p>
                                <label><input type="checkbox" value="総合型" class="checks" id="form">総合型</label>
                        </div>
                    
                        <div class="agents_scale">
                            <p>規模</p>
                                <label><input type="checkbox" value="大手志望" class="checks" id="form">大手志望</label>
                        </div>
                    
                        <div class="filter_btn">
                            <button class="reset_btn" id="uncheck-btn" type="button" >リセット</button>
                            <div class="all_btn" id="check-btn" type="button"></div>
                        </div>
                    </div>
                </div>



                <!-- <?php $stmt = $db->prepare('select id, started_at, ended_at, insert_company_name, insert_logo, insert_recommend_1, insert_recommend_2, insert_recommend_3, insert_handled_number from agents where list_status=1 order by id DESC;');
                if (!$stmt) {
                    die($db->error);
                }
                $success = $stmt->execute();
                if (!$success) {
                    die($db->error);
                }
                $stmt->bind_result($id, $started_at, $ended_at, $insert_company_name, $insert_logo, $insert_recommend_1, $insert_recommend_2, $insert_recommend_3, $insert_handled_number);
    
                while($stmt->fetch())://    繰り返しはじめ
                ?>
             
                <?php endwhile; ?> -->




                <ul class="filter-items">
                    <a href=""><button class="all_keep">全てをキープ</button></a>
                   
                    <li class="agent_box" data-filter-key="総合型">
                        <img class="agent_img" src="/src/user/logo.png" alt="">
                        <div class="agent_article">
                            <div class="agent_article_header">
                                <h1 class="agent_name">エージェント名</h1>
                                <p class="num_company">取扱企業数：6000社</p>
                            </div>
                            <div class="agent_article_main">
                                <p class="recommend_points">おすすめポイント</p>
                                    <div class="recommend_points_box">
                                        <p>ここに文章 </p>
                                    </div>
                                    <div class="recommend_points_box">
                                        <p>ここに文章 </p>
                                    </div>
                                    <div class="recommend_points_box">
                                        <p>ここに文章 </p>
                                    </div>
                                <p class="span_published">掲載期間：2022/04/14~2022/06/10</p>
                            </div>
                            <div class="agent_article_footer">
                                <p class="agent_type">#総合型</p>
                                <label for="trigger" class="open_button">詳細を表示</label>
                                <button class="bn632-hover bn19" id="keep" onclick="OnButtonClick();">キープする</button>
                            </div>
                        </div>

                        <div class="modal_wrap">
                            <input id="trigger" type="checkbox">
                                <div class="modal_overlay">
                                    <label for="trigger" class="modal_trigger"></label>
                                    <div class="modal_content">
                                        <label for="trigger" class="close_button">✖️</label>
                                        <p class="modal_title2">エージェント名</p>
                                        <p>詳細：</p>
                                        <p>あいああああああああ</p>
                                    </div>
                                </div>
                        </div>
                    </li>
                    
                    
                    <li class="agent_box" data-filter-key="大手志望">
                        <img class="agent_img" src="/src/user/logo.png" alt="">
                        <div class="agent_article">
                            <div class="agent_article_header">
                                <h1 class="agent_name">エージェント名</h1>
                                <p class="num_company">取扱企業数：6000社</p>
                            </div>
                            <div class="agent_article_main">
                                <p class="recommend_points">おすすめポイント</p>
                                    <div class="recommend_points_box">
                                        <p>ここに文章 </p>
                                    </div>
                                <p class="span_published">掲載期間：2022/04/14~2022/06/10</p>
                            </div>
                            <div class="agent_article_footer">
                                <p class="agent_type">#大手志望</p>
                                <label for="trigger2" class="open_button">詳細を表示</label>
                                <button  class="bn632-hover bn19"　id="keep" onclick="OnButtonClick();">キープする</button>
                            </div>
                        </div>

                        <div class="modal_wrap">
                            <input id="trigger2" type="checkbox">
                                <div class="modal_overlay">
                                    <label for="trigger2" class="modal_trigger"></label>
                                    <div class="modal_content">
                                        <label for="trigger2" class="close_button">✖️</label>
                                        <p class="modal_title2">エージェント名</p>
                                        <p>詳細：</p>
                                        <p>良い良いいいい</p>
                                    </div>
                                </div>
                        </div>
                    </li>

                    
                </ul>

                <div class="filter_right_wrapper">
                    <btn class="keep_btn" id="keep_btn">
                        <div class="button05">
                            <button class="bn632-hover bn19 open_button" ><label for="trigger_keep">キープ：<span id="keep_counter">０</span>件<br>確認する</label></button>
                        
                        </div>
                    </btn>
                </div>

                <!-- キープ一覧のモーダル -->
            <div class="modal_keep">
                <div class="modal_wrap">
                    <input id="trigger_keep" type="checkbox">
                    <div class="modal_overlay">
                        <label for="trigger_keep" class="modal_trigger"></label>
                        <div class="modal_content">
                            <label for="trigger_keep" class="close_button">✖️</label>

                    <!-- モーダルの中身 -->
                            <h1 class="keep_view">キープ一覧</h1>
                            <container class="filter keep_container" id="js-filter">
                                <div class="filter_left_wrapper keep_left">
                                    <div class="filter-cond modal-filter-cond" >
                                            <p class="filter_num"><span>5</span>件</p>
                                    </div>
                                </div>

                                <div class="modal-filter-items">
                                    <ul class="filter-items">
                                        <li class="agent_box" id="keep_agent_box" data-filter-key="総合型">
                                            <img class="agent_img" src="/src/user/logo.png" alt="">
                                            <div class="agent_article">
                                                <div class="agent_article_header">
                                                    <h1 class="agent_name">エージェント名</h1>
                                                    <p class="num_company">取扱企業数：6000社</p>
                                                </div>
                                                <div class="agent_article_main">
                                                    <p class="recommend_points">おすすめポイント</p>
                                                        <div class="recommend_points_box">
                                                            <p>ここに文章 </p>
                                                        </div>
                                                    <p class="span_published">掲載期間：2022/04/14~2022/06/10</p>
                                                </div>
                                                <div class="agent_article_footer">
                                                    <p class="agent_type">#総合型</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            
                                <div class="filter_right_wrapper modal-filter_right_wrapper">
                                    <btn class="keep_btn" >
                                        <div class="button05">
                                            <a href="/src/user/inquiry.html"><button class="bn632-hover bn19 keep_inquiry_btn " >キープ：<span id="keep_counter">０</span>件<br>問い合わせる</button></a>
                                        </div>
                                    </btn>
                                </div>
                            
                            </container>
                    <!-- ここまでモーダルの中身 -->
                        </div>
                    </div>
                </div>
            </div>
            </container>

    </wrapper>


    <footer></footer>

    <script src="/src/user/main.js"></script>
</body>
</html>