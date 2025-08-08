<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>게임 추천</title>

    <!-- OG Tag -->
    <meta property="og:title" content="예시" />
    <meta property="og:description" content="예시2" />

    <!-- Web Font -->
    <style>
        @font-face {
            font-family: 'TTSamlipCreamyWhiteR';
            src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-4@1.0/TTSamlipCreamyWhiteR.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        body {
            font-family: 'TTSamlipCreamyWhiteR', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 16px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        .title {
            text-align: center;
            font-size: 28px;
            margin-bottom: 30px;
        }

        .qa-box {
            margin-bottom: 20px;
            font-size: 18px;
        }

        .qa-box strong {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        form {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }

        input[name="question"] {
            flex: 1;
            padding: 10px 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
        }

        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="title">🎮 게임 추천 챗봇</div>

        <div class="qa-box">
            <strong>질문:</strong>
            <p><%= request.getAttribute("question") != null ? request.getAttribute("question") : "질문을 입력해보세요!" %></p>
        </div>

        <div class="qa-box">
            <strong>답변:</strong>
            <p><%= request.getAttribute("data") != null ? request.getAttribute("data") : "GPT가 여기에 답변을 줄 거예요!" %></p>
        </div>

        <form method="post">
            <input name="question" placeholder="예: FPS 게임 추천해줘">
            <button>질문하기</button>
        </form>
    </div>
</body>
</html>