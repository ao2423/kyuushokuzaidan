<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>公益財団法人よこはま学校食育財団</title>
    
  <style>
    /* ページ全体のスタイル */
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
        min-height: 2000px; /* ページをスクロール可能にするための高さ */
    }

    /* タイトル */
    h1 {
        font-size: 36px;
        color: black; /* 緑色 */
        text-align: center;
        margin-top: 20px;
    }

    /* ヘッダー */
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
    display: flex; /* 横並び */
    justify-content: center;
    white-space: nowrap; /* 改行を防止 */
}

.header ul li {
    margin: 0 20px;
    position: relative;
}

/* リンクの基本スタイル */
.header ul li a {
    color: black;
    font-size: 18px;
    text-decoration: none;
    padding: 10px 20px;
    display: inline-block;
    transition: transform 0.3s ease, box-shadow 0.3s ease; /* 変形と影のアニメーション */
    white-space: nowrap; /* 改行を防止 */
}

    /* 「食育の推進」を赤色で強調 */
    .header ul li a.active {
        color: red;
    }

    /* ホバー時にリスト項目を浮かび上がらせる */
    .header ul li a:hover {
        background-color: #3cb371; /* 明るい緑 */
        transform: scale(1.1); /* 1.1倍に拡大 */
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* 影を追加 */
        border-radius: 5px;
    }

    .header ul li ul {
        display: none;
        position: absolute;
        top: 50px;
        left: 0;
        background-color: white; /*一覧表示*/
        padding: 10px;
        list-style-type: none;
    }

    .header ul li:hover ul {
        display: block;
    }

    .header ul li ul li {
        margin: 5px 0;
    }

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
        transition: opacity 0.5s ease, transform 0.5s ease;  /* opacity と transform の両方を変更 */
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

    /* 各セクション */
    .section {
        margin-bottom: calc(1.5em * 15); /* セクション間隔を15行分開ける (行間を1.5emとして計算) */
    }

    .section h2 {
        font-size: 24px;
        color: black;
        margin-bottom: 20px; /* 上部の余白 */
    }

    .section p {
        font-size: 16px;
        line-height: 1.8; /* 読みやすいように行間を広げる */
    }

    /* スクロールした時にヘッダーが消える */
    .hide-header {
        display: none;
    }

    /* 食育の推進の横並び項目 */
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
        background-color: pink; /* 明るい緑 */
        border-radius: 5px;
    }

    .header-image {
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
        gap: 10px; /* pタグとaタグの間にスペースを追加 */
        align-items: baseline; /* テキストのベースラインを揃える */
        margin-bottom: 20px; /* 各ニュース項目の間隔を広げる */
    }

    .news-item p {
        margin-right: 100px;
        margin: 0; /* pタグのデフォルトマージンを削除 */
        white-space: nowrap; /* 日付部分が折り返されないようにする */
    }

    .news-item a {
        text-decoration: none; /* 下線を削除 */
        color: black; /* リンクの色 */
        transition: all 0.3s ease; /* スムーズなアニメーション効果を追加 */
    }

    .news-item a:hover {
        color: #ff6347; /* マウスカーソルが合った時のリンク色（トマト色） */
        transform: scale(1.1); /* リンクを拡大 */
        font-weight: bold; /* 太字で強調 */
    }
.secondary-nav {
    background-color: #f8f8f8; /* 背景色 */
    padding: 10px 0; /* 上下の余白 */
    display: flex; /* 横並び配置 */
    justify-content: center; /* コンテンツを中央寄せ */
    gap: 20px; /* 各リンク間のスペース */
    border-top: 1px solid #ccc; /* 上線 */
    border-bottom: 1px solid #ccc; /* 下線 */
    position: fixed; /* 画面に固定 */
    bottom: 0; /* ページの一番下に配置 */
    width: 100%; /* 横幅をページ全体に */
    z-index: 1000; /* 他の要素の上に表示 */
}

/* リンクのスタイル */
.secondary-nav a {
    color: #333; /* リンクの文字色 */
    text-decoration: none; /* 下線を削除 */
    font-size: 16px; /* フォントサイズ */
    padding: 8px 15px; /* 内側の余白 */
    transition: background-color 0.3s ease, color 0.3s ease; /* ホバー時のスムーズなアニメーション */
}

/* ホバー時のスタイル */
.secondary-nav a:hover {
    background-color: #e0e0e0; /* 背景色の変更 */
    color: #007BFF; /* リンクの文字色を青に変更 */
    border-radius: 5px; /* 角を丸くする */
}

/* フッター全体のスタイル */
/* 画像を含むフッター内のスタイル */
/* 画像を含むフッター内のスタイル */


/* 画像を含むフッター内のスタイル */
.footer-table {
    width: 100%; /* 横幅を100%にして全体に広げる */
    margin: 0 auto;
    border-spacing: 0;
    padding: 0 5%;
    table-layout: fixed; /* セルの幅を均等に */
}

.footer-table td {
    vertical-align: top;
    padding: 20px; /* セルの余白 */
    text-align: center; /* セル内のテキストを中央に配置 */
}

/* 画像のスタイル */
.footer-image-img {
    width: 50%;
    height: auto;
    object-fit: cover; /* 画像がセルに収まるように調整 */
}

/* 各フッターアイテムのスタイル */
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
    white-space: nowrap; /* 改行を防止 */
    padding: 5px 0;
}

.footer-item a {
    text-decoration: none;
    color: black;
}

.footer-item a:hover {
    color: #007BFF;
}

/* フッター内の最下部の詳細情報 */
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

        <!-- 右側のテキスト部分 -->
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
            <td class="footer-item">
                <h4>会社情報</h4>
                <ul>
                    <li>会社名: 株式会社サンプル</li>
                    <li>住所: 〒123-4567 東京都新宿区</li>
                    <li>電話番号: 03-1234-5678</li>
                    <li>メール: example@sample.com</li>
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
