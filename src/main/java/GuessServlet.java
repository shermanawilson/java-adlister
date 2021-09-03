import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "GuessServlet", value = "/guess")
public class GuessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/guess.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int userGuestNum = Integer.parseInt(request.getParameter("guess_num"));


        Random random = new Random();
        int min = 1;
        int max = 3;

        int randomInt = random.nextInt(max - min + 1) + min;

        if(randomInt == userGuestNum) {
            // You got it right
            response.sendRedirect("/correct");
        }else{
            // You got it wrong
            response.sendRedirect("/incorrect");

        }


    }
}
