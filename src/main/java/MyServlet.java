import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// Servlet -> HttpServlet 상속
@WebServlet("/chat") // '/chat'라고 하는 요청을 받을 수 있음
public class MyServlet extends HttpServlet {
    // 일반적인 브라우저 접속 GET
    @Override
    protected void doGet(
            HttpServletRequest req,
            HttpServletResponse resp) throws ServletException, IOException {
        // req -> 인풋 (데이터)
        // resp -> 아웃풋 (화면 표현되는 것, 주소)
        // 화면을 그려주는 것
        resp.getWriter().println("Hello AI!");
    }
}