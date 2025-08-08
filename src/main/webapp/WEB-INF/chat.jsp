<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<body>
<h2>ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄹ</h2> <!-- ## -->
<!-- p 태그 : paragraph -->
<h3>수령님 이름</h3> <!-- ### -->
<p>
    <%= request.getAttribute("saying") %>
</p>
<p>
    이름 : <%= request.getAttribute("name") %>
</p>
</body>
</html>