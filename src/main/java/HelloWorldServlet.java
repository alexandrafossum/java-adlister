import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        res.setContentType("hello");
        PrintWriter out = res.getWriter();
        out.println("<h1>Hello, world!</h1>");

        String name = "world";

        if (req.getParameter("name") != null) {
            name = req.getParameter("name");
        }

        out.println("Hello, " + name);

    }
}

