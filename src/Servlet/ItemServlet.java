package Servlet;

import dao.StarItemDao;
import model.staritem;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class ItemServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 
       StarItemDao itemsDao = new StarItemDao();
       String showType = request.getParameter("show");
       if (showType != null && showType.equals("one")){
    	   //查找单个商品的信息，并转向商品详情页面
    	   staritem item  = itemsDao.getItemsById(Integer.parseInt(request.getParameter("id")));
	       request.setAttribute("item", item);
	       request.getRequestDispatcher("Productdetail.jsp").forward(request, response);
       }
       else{
	       ArrayList<staritem> list = (ArrayList<staritem>) itemsDao.findAll();
	       request.setAttribute("list", list);
	       request.getRequestDispatcher("index.jsp").forward(request, response);
	
       }

	}

}
