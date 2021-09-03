import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "pizza-order", value = "/pizza-order")
public class PizzaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        request.getRequestDispatcher("/pizza.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String crust = request.getParameter("crust");
        String sauce = request.getParameter("sauce");
        String size = request.getParameter("size");

        String pepperoni = request.getParameter("pepperoni");
        String mushroom = request.getParameter("mushroom");
        String onions = request.getParameter("onions");
        String olives = request.getParameter("olives");
        String cheese = request.getParameter("cheese");

        String address = request.getParameter("address");

        System.out.println(crust);
        System.out.println(sauce);
        System.out.println(size);

        System.out.println(pepperoni);
        System.out.println(mushroom);
        System.out.println(onions);
        System.out.println(olives);
        System.out.println(cheese);

        System.out.println(address);


//        if(crust == null) {
//
//            crust =
//        }

    }
}
