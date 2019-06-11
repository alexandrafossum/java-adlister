import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/about")
public class AboutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        res.setContentType("about");
        PrintWriter out = res.getWriter();
        out.println("<h1>About Us</h1> <p>Get on with it! Oh, waiter! This conversation isn't very good. Nobody expects the Spanish Inquisition! Ah, I see you have the machine that goes ping. This is my favorite. You see we lease it back from the company we sold it to and that way it comes under the monthly current budget and not the capital account. I'm Brian, and so's my wife! Hey! Your nose is going to be three foot wide across your face by the time I'm finished with you!</p>");
    }
}
