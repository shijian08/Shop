package Servlet;

import dao.StarItemDao;
import model.cart;
import model.staritem;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CartServlet extends HttpServlet {

    private String action ; //表示购物车的动作 ,add,show,delete
    //商品业务逻辑类的对象
    private StarItemDao sdao = new StarItemDao();

    public void init(ServletConfig config)throws ServletException {
        super.init();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if(request.getParameter("action") != null) {
            this.action = request.getParameter("action");

            //如果是添加商品进购物车
            if(action.equals("add")) {
                if(addToCart(request,response)) {
                    System.out.println("add~~~~~~~success~~~~~~~~~~~~~~~~~~~~~~~");
                    request.getRequestDispatcher("success.jsp").forward(request, response);
                }
                else { request.getRequestDispatcher("failure.jsp").forward(request, response);
                    System.out.println("add~~~~~~~failure~~~~~~~~~~~~~~~~~~~~~~~");
                }
            }

            //如果是显示购物车
            if(action.equals("show")) {
                System.out.println("show~~~~~success~~~~~~~~~~~~~~~~~~~~~~~~~");
                request.getRequestDispatcher("giftcart.jsp").forward(request, response);
            }

            //如果是执行删除购物车中的商品
            if(action.equals("delete")) {
                if(deleteFromCart(request,response)) {
                    request.getRequestDispatcher("giftcart.jsp").forward(request, response);
                }
                else {
                    request.getRequestDispatcher("giftcart.jsp").forward(request, response);
                }
            }
        }
    }

    private boolean deleteFromCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        cart cart = (cart)request.getSession().getAttribute("cart");
        staritem staritem = sdao.getItemsById(Integer.parseInt(id));
        if(cart.removeGoodsFromCart(staritem)) { return true; }
        else{return false; }
    }

    private boolean addToCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String number = request.getParameter("num");
        staritem staritem = sdao.getItemsById(Integer.parseInt(id));

        System.out.println(id+"~~~~"+number+"~~~~~~~~~~~~~~~~~~~~~~");
        //是否是第一次给购物车添加商品,需要给session中创建一个新的购物车对象
        if(request.getSession().getAttribute("cart") == null) {
            cart cart = new cart();
            request.getSession().setAttribute("cart",cart);
        }
        cart cart = (cart)request.getSession().getAttribute("cart");

        if(cart.addGoodsInCart(staritem, Integer.parseInt(number)))
        { return true; }
        else { return false; }
    }

}
