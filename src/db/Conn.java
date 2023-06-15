package db;

import java.sql.*;

//数据库通用处理类，可创建连接、执行SQL语句、关闭资源等
public class Conn  {

    private Connection con; //与数据库连接的对象
    private Statement st;

    //构造函数，在创建Conn类的对象时自动调用
    public Conn() throws Exception {
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/ssm_db";
        String username = "root";
        String password = "123456"; //请把这个改成你自己的密码

        Class.forName(driver);
        con = DriverManager.getConnection(url,username,password);
        st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    }

    //executeQuery--执行查询语句
    public ResultSet executeQuery(String sql) {
        ResultSet rs = null;
        try {
            rs = st.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace(System.err);
        }
        return rs;
    }
    //executeUpdate方法--执行对数据库的更新的SQL语句

    public int executeUpdate(String sql) {
        try {
            return st.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace(System.err);
            return 0;
        }
    }

    //创建预编译对象的方法
    public PreparedStatement prepareStatement(String sql) {
        try {
            return con.prepareStatement(sql);
        } catch (SQLException e) {
            e.printStackTrace(System.err);
            return null;
        }
    }

    //判断连接是否成功
    public boolean isConnected(){
        return con != null;
    }
    /*
     **关闭各项资源的方法
     */
    public void close() {
        try {
            if (st != null) st.close();
        } catch (Exception e) {
            e.printStackTrace(System.err);
        }

        try {
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace(System.err);
        }
    }


}
