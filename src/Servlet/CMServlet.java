package Servlet;

import dao.StarItemDao;
import model.staritem;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CMServlet extends HttpServlet {

    public void init(ServletConfig config)throws ServletException {
        super.init();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
                case "del":
                    doDel(request, response);
                    break;
            }
        }
    }

    private void doDel(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        int  id = Integer.parseInt(request.getParameter("id"));
        System.out.println(id);
        StarItemDao starItemDao = new StarItemDao();
        if (starItemDao.delete(id)){
            System.out.println("success~");
        }else
            System.out.println("fails");
        response.sendRedirect("shop-list.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        if (action != null){
            switch (action){
                case "edit":
                    doEdit(request, response);
                    break;
                case "add":
                    doAdd(request, response);
                    break;
            }
        }
    }

    private void doAdd(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        request.setCharacterEncoding("UTF-8");
//
//        StarItemDao dao = new StarItemDao();
//
//        if(dao.insert()){
//            System.out.println("添加成功");
//
//        }else{
//            System.out.println("添加失败");
//        }
//        response.sendRedirect("shop-list.jsp");

    }

    private void doEdit(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        try{
            int id = Integer.parseInt(request.getParameter("id"));
            String starname = request.getParameter("starname");
            String content = request.getParameter("content");
            double price = Double.parseDouble(request.getParameter("price"));

            staritem staritem = new staritem(id,starname,content,price);
            new StarItemDao().update(staritem);
        }catch(Exception e){
            System.out.println("表单参数异常！");
        }finally{
            response.sendRedirect("shop-list.jsp");
        }
    }
}
