import com.google.genai.Client;
import io.github.cdimascio.dotenv.Dotenv;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import jdk.incubator.foreign.CLinker;

import java.io.IOException;

// [2]
@WebServlet("/ai") // localhost:8080/ai
// 이 서블릿을 통해 호출
public class AIServlet extends HttpServlet { // [1]
    // doGet, doPost

    // 경로에 들어갔을 때 (GET) -> 그 때 호출될 기능
    @Override // [3]
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Dotenv dotenv = Dotenv.load();
        String apikey = dotenv.get("GOOGLE_API_KEY");
        Client client = Client.builder()
                .apiKey(apikey)
                .build();
        String data = client.models.generateContent("gemini-2.0-flash", "요즘 잘나가는 게임 알려주고, 결과만 50자 내로 출력해줘.", null)
                        .text();
        req.setAttribute("data", data); // [6]

        RequestDispatcher dispatcher = req.getRequestDispatcher(
                "/WEB-INF/ai.jsp");
        dispatcher.forward(req, resp); // [4]
        // WEB-INF -> ai.jsp [5]
    }
}