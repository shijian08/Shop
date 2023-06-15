package Servlet;

import dao.StarItemDao;
import model.staritem;
import model.users;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.List;

public class PutServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        if (action != null){
            switch (action){
                case "admin_login":
                    doAdLogin(request, response);
                    break;
                case "login":
                    doLogin(request, response);
                    break;
                case "register":
                    doRegister(request, response);
                    break;
                case "search":
                    doSearch(request, response);
                    break;
            }
        }

    }

    private void doSearch(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String starname = request.getParameter("name");
        System.out.println(starname);
        if (starname != null){
            List<staritem> list = new StarItemDao().Search(starname);
            System.out.println(list.size()+"   ------tiao-------");
            request.setAttribute("list",list);
            request.getRequestDispatcher("shop-list.jsp").forward(request,response);
        }else {
            System.out.println("fail");
        }
    }

    private void doRegister(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        boolean flag;

        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmpassword = request.getParameter("confirmpassword");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");


        Connection con = null;
        PreparedStatement pt = null;

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/ssm_db";
        String user = "root";
        String pwd = "123456";
        String sql = "insert into users(username,password,confirmpassword,email,phone) values (?,?,?,?,?)";
        users users = new users(username,password,confirmpassword,email,phone);

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,pwd);
            pt = con.prepareStatement(sql);
            pt.setString(1,users.getName());
            pt.setString(2,users.getPassword());
            pt.setString(3,users.getConfirmpassword());
            pt.setString(4,users.getEmail());
            pt.setString(5,users.getPhone());

            int n = pt.executeUpdate();
            flag = n > 0;
            if (flag){
                response.setHeader("refresh","1;url=login.jsp");
            }else {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('Fail!');window.location.href='register.jsp'</script>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pt != null){
                try {
                    pt.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            if (con != null){
                try {
                    con.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
    }

    private void doLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();

        String driver = "com.mysql.jdbc.Driver";
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        String url = "jdbc:mysql://localhost:3306/ssm_db";
        String user = "root";
        String pwd = "123456";

        String sql = "select * from users where username= '"
                + username +"' and password='"+ password +"'";

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,pwd);
            st = con.createStatement();
            rs = st.executeQuery(sql);
            if (rs != null && rs.next()){
                session.setAttribute("username",username);
                response.setHeader("refresh","1;url=index.jsp");
            }else {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('Fail!');window.location.href='login.jsp'</script>");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            if (rs != null){
                try {
                    rs.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            if (st != null){
                try {
                    st.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            if (con != null){
                try {
                    con.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
    }

    private void doAdLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();

        String driver = "com.mysql.jdbc.Driver";
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        String url = "jdbc:mysql://localhost:3306/ssm_db";
        String user = "root";
        String pwd = "123456";
        String sql = "select * from managers where name= '"+username+"' and password='"+password+"'";

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,pwd);
            st = con.createStatement();
            rs = st.executeQuery(sql);
            if (rs != null && rs.next()){
                session.setAttribute("username",username);
                response.setHeader("refresh","1;url=background.jsp");
            }else {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('Fail!');window.location.href='admin_login.jsp'</script>");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            if (rs != null){
                try {
                    rs.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            if (st != null){
                try {
                    st.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            if (con != null){
                try {
                    con.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
    }
}
