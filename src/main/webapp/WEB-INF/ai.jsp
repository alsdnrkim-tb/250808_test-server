<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>게임 너무 좋아</title>
    </head>
<body>

<p>
    <!-- req 안에 set된 data라는 attribute가 있따면 출력 -->
    <%= request.getAttribute("data") %>
</p>
<p>
    이름 : <%= request.getAttribute("name") %>
</p>
</body>
</html>