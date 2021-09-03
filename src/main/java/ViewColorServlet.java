import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ViewColorServlet", value = "/viewcolor")
public class ViewColorServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userColor = request.getParameter("color");

        request.setAttribute("color",userColor);

        request.getRequestDispatcher("/viewcolor.jsp").forward(request,response);
    }

}
