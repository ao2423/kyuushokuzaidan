<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>公益財団法人よこはま学校食育財団</title>
    
  <style>
    
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        color: #333;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: flex-start;
        min-height: 2000px; 
    }


    h1 {
        font-size: 36px;
        color: black; 
        text-align: center;
        margin-top: 20px;
    }


    .header {
        width: 100%;
        background-color: white;
        padding: 10px 0;
        position: sticky;
        top: 0;
        z-index: 100;
    }

  .header ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    text-align: center;
    display: flex; 
    justify-content: center;
    white-space: nowrap;
}

.header ul li {
    margin: 0 20px;
    position: relative;
}


.header ul li a {
    color: black;
    font-size: 18px;
    text-decoration: none;
    padding: 10px 20px;
    display: inline-block;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    white-space: nowrap; 
}

 
    .header ul li a.active {
        color: #9ACD32;
    }

   
    .header ul li a:hover {
        background-color: #3cb371; 
        transform: scale(1.1); 
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); 
        border-radius: 5px;
    }

    .header ul li ul {
        display: none;
        position: absolute;
        top: 50px;
        left: 0;
        background-color: white; 
        padding: 10px;
        list-style-type: none;
    }

    .header ul li:hover ul {
        display: block;
    }

    .header ul li ul li {
        margin: 5px 0;
    }
    /*ヘッダー画像*/
    .header-image{
        
        z-index: 1;
        
    }

    /* コンテンツ */
    .content {
        display: flex;
        justify-content: center;
        width: 80%;
        margin-top: 20px;
    }

    .content .main-text {
        width: 70%;
        margin-left: 150px;
    }

    .sidebar img {
        z-index: 0;
    
        position: fixed;
        left: 10px;
        top: 100px;
        transition: opacity 0.5s ease, transform 0.5s ease;  
    }

    .sidebar #sidebarImage {
        opacity: 1;
    }

    .sidebar #sidebarImage1 {
        opacity: 0;
    }

    .sidebar #sidebarImage2 {
        opacity: 0;
    }

   
    .section {
        margin-bottom: calc(1.5em * 15); 
    }

    .section h2 {
        font-size: 24px;
        color: black;
        margin-bottom: 20px; 
    }

    .section p {
        font-size: 16px;
        line-height: 1.8; /
    }


    .hide-header {
        display: none;
    }

    
    .header .horizontal-menu {
        display: flex;
        justify-content: space-around;
        align-items: center;
    }

    .header .horizontal-menu li {
        margin: 0 15px;
        position: relative;
    }

    .header .horizontal-menu li a {
        color: black;
        font-size: 18px;
        text-decoration: none;
        padding: 10px 20px;
    }

    .header .horizontal-menu li a:hover {
        background-color: limegreen;
        border-radius: 5px;
    }
     
    .header-image {
        grid:
        width: 100%;
        text-align: center;
        margin: 0 auto;
    }

    .header-image img {
        width: 100%; 
        height: auto; 
        display: block;
    }

    .news-item {
        display: flex;
        gap: 10px; 
        align-items: baseline; 
        margin-bottom: 20px; 
    }

    .news-item p {
        margin-right: 100px;
        margin: 0; 
        white-space: nowrap; 
    }

    .news-item a {
        text-decoration: none; 
        color: black; 
        transition: all 0.3s ease; 
    }

    .news-item a:hover {
        color: #ff6347;
        transform: scale(1.1);
        font-weight: bold; 
    }
.secondary-nav {
    background-color: #f8f8f8; 
    padding: 10px 0; 
    display: flex; 
    justify-content: center; 
    gap: 20px;
    border-top: 1px solid #ccc; 
    border-bottom: 1px solid #ccc; 
    position: fixed;
    bottom: 0; 
    width: 100%; 
    z-index: 1000; 
}


.secondary-nav a {
    color: #333; 
    text-decoration: none; 
    font-size: 16px; 
    padding: 8px 15px; 
    transition: background-color 0.3s ease, color 0.3s ease; 
}


.secondary-nav a:hover {
    background-color: #e0e0e0; 
    color: #007BFF; 
    border-radius: 5px; 
}





.footer-table {
    width: 100%; 
    margin: 0 auto;
    border-spacing: 0;
    padding: 0 5%;
    table-layout: fixed; 
}

.footer-table td {
    vertical-align: top;
    padding: 20px; 
    text-align: center; 
}


.footer-image-img {
    width: 50%;
    height: auto;
    object-fit: cover; 
}


.footer-item h4 {
    margin: 0 0 10px 0;
    font-size: 18px;
}

.footer-item ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.footer-item li {
    white-space: nowrap; 
    padding: 5px 0;
}

.footer-item a {
    text-decoration: none;
    color: black;
}

.footer-item a:hover {
    color: #007BFF;
}


.footer-bottom {
    text-align: center;
    margin-top: 20px;
    font-size: 14px;
    color: #333;
}

.scroll-to-top-btn {
  position: fixed;
  bottom: 40px;
  right: 5px;
  background-color: #4CAF50;
  color: white;
  border: none;
  padding: 25px;
  font-size: 16px;
  cursor: pointer;
  border-radius: 10px;
}

.scroll-to-top-btn:hover {
  background-color: #45a049;
}

 .custom-line {
    border: none;           /* デフォルトの枠線を消す */
    height: 2px;            /* 線の太さ */
    background-color: #9ACD32;  /* 線の色（黄色っぽい緑色） */
    width: 80%;             /* 線の長さ */
    margin: 20px auto;      /* 上下の余白、中央揃え */
  }
</style>
</head>
<body>

    <div class="header">
        <ul class="horizontal-menu">
            <li><a href="#" class="active">食育の推進</a></li>
            <li><a href="#">作ってみよう！給食の献立</a>
                <ul class="dropdown-content">
                    <li><a href="#">学校給食の献立紹介(学校編)</a></li>
                    <li><a href="#">学校給食の献立紹介(料理編)</a></li>
                    <li><a href="#">料理の基本</a></li>
                    <li><a href="#">おうち給食始めました</a></li>
                    <li><a href="#">季節の献立</a></li>
                </ul>
            </li>
            <li><a href="#">地産地消の取り組み</a></li>
            <li><a href="#">親子料理教室</a></li>
            <li><a href="#">学校向けの活動</a>
                <ul class="dropdown-content">
                    <li><a href="#">貸し出し教材</a></li>
                    <li><a href="#">給食試食支援プロジェクト</a></li>
                    <li><a href="#">出張食育教室</a></li>
                    <li><a href="#">教職員向け研修(食材塾)</a></li>
                </ul>
            </li>
            <li><a href="#">給食室ボイス</a></li>
            <li><a href="#">その他の食育活動</a></li>
        </ul>
    </div>
    
     <div class="header-image">
        <img src="images/学校給食ひろば.jpg" alt="ヘッダー画像">
        
    </div>
    <div class="secondary-nav">
    <a href="#">当財団について</a>
    <a href="#">献立・産地・アレルギー</a>
    <a href="#">安心・安全への取組</a>
    <a href="#">食育ひろば</a>
    <a href="#">入札契約情報</a>
</div>
    
    
    <!-- メインコンテンツ -->
    <div class="content">

        <!-- 左側の画像 -->
    
        <div class="sidebar">
        <img id="sidebarImage" src="images/1.png">
        <img id="sidebarImage1" src="images/2.png">
        <img id="sidebarImage2" src="images/3.png">
        </div>

        
        <div class="main-text">
            <div class="section">
                <h2>新着情報</h2>
                <div class="news-item">
                    <p>2024年11月29日 &nbsp;&nbsp;&nbsp;&nbsp;</p>
                    <a href="#">作ってみよう！給食の献立『おうち給食はじめました』に「じゃがいものソテー」を掲載しました。</a>
                </div>
                <div class="news-item">
                    <p>2024年11月25日&nbsp;&nbsp;&nbsp;&nbsp;</p>
                    <a href="#">作ってみよう！給食の献立『おうち給食はじめました』に「きのこスパゲティ」「キャベツの塩こんぶ炒め」を掲載しました。</a>
                </div>
                <div class="news-item">
                    <p>2024年11月22日&nbsp;&nbsp;&nbsp;&nbsp;</p>
                    <a href="#">作ってみよう！給食の献立『料理編』に、小学校の給食の中から「米粉ドライカレー」、特別支援学校の給食の中から「けんちんうどん」「さつまいもとりんごの甘煮」を掲載しました。</a>
                </div>
                <div class="news-item">
                    <p>2024年11月18日 &nbsp;&nbsp;&nbsp;&nbsp;</p>
                    <a href="#">作ってみよう！給食の献立『おうち給食はじめました』に「酢みそあえ」「とんカツ」「変わり五目豆」「麻婆なす」を掲載しました。作ってみよう！給食の献立『学校編』に東小学校、市ケ尾小学校、市沢小学校、井土ケ谷小学校、榎が丘小学校、笠間小学校、上菅田特別支援学校、上郷小学校、北方小学校、北綱島特別支援学校、新石川小学校、新吉田第二小学校、瀬ケ崎小学校、綱島小学校、永野小学校、新田小学校、東品濃小学校、東本郷小学校、日吉台小学校、本牧南小学校、丸山台小学校、六つ川小学校を掲載しました。</a>
                </div>
                <div class="news-item">
                    <p>2024年11月12日&nbsp;&nbsp;&nbsp;&nbsp;</p>
                    <a href="#">作ってみよう！給食の献立『おうち給食はじめました』に「酢みそあえ」「とんカツ」「変わり五目豆」「麻婆なす」を掲載しました。</a>
                </div>
            </div>
            <div class="section">
                <h2>食育の推進</h2>
                <p>親子料理教室や講演会の開催、給食実施校向けに給食物資納入業者を講師とする食材塾の開催、学校訪問や給食試食会等支援プロジェクトの実施、給食献立レプリカ等教材の貸し出しなど、食育を推進しています。</p>
            </div>

            <div class="section">
                <h2>お知らせ</h2>
                <a href ="#">【お知らせ】＊10月に開催した親子料理教室の様子を掲載しています。</a>
            </div>
            
            
        </div>
    </div>
<div class="footer">
    <!-- 画像セクション -->


    <!-- リンクと会社情報セクション -->
    <table class="footer-table">
        <tr>
            <!-- 1列目: 画像 -->
            <td class="footer-item" style="padding: 0;">
                <img src="images/4.png" alt="Footer Image" class="footer-image-img">
            </td>

            <!-- 2列目: リンク -->
            <td class="footer-item">
                <h4>リンク</h4>
                <ul>
                    <li><a href="#">ホーム</a></li>
                    <li><a href="#">会社情報</a></li>
                    <li><a href="#">サービス</a></li>
                    <li><a href="#">お問い合わせ</a></li>
                </ul>
            </td>

            <!-- 3列目: 会社情報 -->
            
   <hr class="custom-line">         
            
            <td class="footer-item">
                <h4>SNS</h4>
                <ul>
                    <li>youtube</li>
                    <li>Instagram</li>
                    <li>x</li>
                   
                </ul>
            </td>
        </tr>
    </table>

    <!-- フッター下部の詳細情報 -->
    <div class="footer-bottom">
        <p>&copy; 2024 株式会社サンプル. All rights reserved.</p>
    </div>
</div>
<button id="scrollToTopBtn" class="scroll-to-top-btn">トップへ戻る</button>


    

<script>
window.addEventListener('scroll', function() {
    var scrollTop = window.pageYOffset;
    const img = document.getElementById("sidebarImage");
    const img1 = document.getElementById("sidebarImage1");
    const img2 = document.getElementById("sidebarImage2");

    console.log("Scroll Position: " + scrollTop); // デバッグ: 現在のスクロール位置を表示

    if (scrollTop < 1200) {
        img.style.opacity = 1;
        img1.style.opacity = 0;
        img2.style.opacity = 0;
    } else if (scrollTop >= 1200 && scrollTop < 1700) {
        img.style.opacity = 0;
        img1.style.opacity = 1;
        img2.style.opacity = 0;
    } else if (scrollTop >= 1800) {
        img.style.opacity = 0;
        img1.style.opacity = 0;
        img2.style.opacity = 1;
    }
});
    
</script>
<script>
// ボタンの取得
const scrollToTopBtn = document.getElementById("scrollToTopBtn");

// スクロール位置が一定の位置を超えたらボタンを表示
window.onscroll = function() {
  if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
    scrollToTopBtn.style.display = "block";
  } else {
    scrollToTopBtn.style.display = "none";
  }
};

// ボタンクリックでトップに戻る
scrollToTopBtn.onclick = function() {
  window.scrollTo({ top: 0, behavior: 'smooth' });
};
</script>
</body>
</html>
