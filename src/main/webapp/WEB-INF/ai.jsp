<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>게임 추천</title>
    <!-- OG Tag -->
    <meta property="og:tatle" content="예시"
    <meta property="og:description" content="예시2">
    <style>
    @font-face {
        font-family: 'TTSamlipCreamyWhiteR';
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-4@1.0/TTSamlipCreamyWhiteR.woff2') format('woff2');
        font-weight: normal;
        font-style: normal;
    }
     body {
                font-family: 'TTSamlipCreamyWhiteR';
            }
    </style>

</head>

<body>
<!-- II. 질문을 표시 -->
<p>
    질문 : <%= request.getAttribute("question") %>
</p>
<p>
    <!-- 2. req(request) 안에 set된 'data'라는 attribute가 있다면 출력 -->
    답변 : <%= request.getAttribute("data") %> <!-- 값을 출력 -->
</p>
<!-- I. 주소창이 아니라 우리가 데이터를 화면에서 아예 전달 -->
<form method="post">
    <input name="question">
    <button>질문하기</button>
</form>
</body>
</html>