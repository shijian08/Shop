package dao;

import db.Conn;
import model.staritem;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StarItemDao {

    public static  final int Pagesize = 5;                      //初始化页码

    public int getTotal(){
        int total = 0;

        Connection con = null;
        Statement st = null;
        ResultSet rs = null;

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/ssm_db";
        String user = "root";
        String pwd = "123456";
        String sql = "select count(*) as total from staritem";

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,pwd);
            st = con.createStatement();
            rs = st.executeQuery(sql);
            if (rs != null){
                while (rs.next()){
                    total = rs.getInt("total");
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
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
        return total;
    }

    public  List<staritem> findBypage(int pageNo){

        if (pageNo < 1) return null;
        List<staritem> staritemList = new ArrayList<>();

        Connection con = null;
        Statement st = null;
        ResultSet rs = null;

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/ssm_db";
        String user = "root";
        String pwd = "123456";
        String sql = "select * from staritem limit " +(pageNo-1)*Pagesize+","+Pagesize;

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,pwd);
            st = con.createStatement();
            rs = st.executeQuery(sql);
            if (rs != null){
                while (rs.next()){
                    staritem staritem = new staritem(rs.getInt("id"),
                            rs.getString("starname"),
                            rs.getString("content"),
                            rs.getDouble("price"),
                            rs.getString("thumbnail"));
                    staritemList.add(staritem);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
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
        return staritemList;
    }

    // 获得所有的商品信息
    public List<staritem> findAll(){

        List<staritem> list = new ArrayList<>();
        Conn con = null;
        ResultSet rs = null;
        String sql = "select * from staritem";

        try{
            con = new Conn();
            rs = con.executeQuery(sql);
            if(rs != null){
                while(rs.next()){
                    staritem staritem = new staritem(rs.getInt("id"),
                            rs.getString("starname"),
                            rs.getString("content"),
                            rs.getDouble("price"),
                            rs.getString("thumbnail"));
                    list.add(staritem);
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{

            if(rs != null){
                try {
                    rs.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            if(con != null)
                try {
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
        }
        return list;
    }

    // 根据商品编号获得商品资料
    public staritem getItemsById(int id) {

        PreparedStatement stmt = null;
        ResultSet rs = null;
        Conn con;
        String sql = "select * from staritem where id = ?;"; // SQL语句

        try {

            con = new Conn();
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            if (rs.next()) {
                staritem staritem = new staritem();
                staritem.setId(rs.getInt("id"));
                staritem.setStarname(rs.getString("starname"));
                staritem.setContent(rs.getString("content"));
                staritem.setPrice(rs.getInt("price"));
                staritem.setThumbnail(rs.getString("thumbnail"));
                return staritem;
            } else {
                return null;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        } finally {
            // 释放数据集对象
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            // 释放语句对象
            if (stmt != null) {
                try {
                    stmt.close();
                    stmt = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }

        }
    }

    public boolean insert(staritem staritem){
        boolean flag = false;

        Connection con = null;
        PreparedStatement pt = null;

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/ssm_db";
        String user = "root";
        String pwd = "123456";
        String sql = "INSERT INTO staritem(starname,content,price,thumbnail) VALUES(?,?,?,?)";

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,pwd);
            pt = con.prepareStatement(sql);

            pt.setString(1,staritem.getStarname());
            pt.setString(2,staritem.getContent());
            pt.setDouble(3,staritem.getPrice());
            pt.setString(4,staritem.getThumbnail());
            int n = pt.executeUpdate();
            flag = n > 0;
        } catch (ClassNotFoundException | SQLException e) {
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
        return flag;
    }

    public boolean delete(int id){
        boolean flag = false;

        String driver = "com.mysql.jdbc.Driver";
        Connection con = null;
        PreparedStatement pt = null;
        String url = "jdbc:mysql://localhost:3306/ssm_db";
        String user = "root";
        String pwd = "123456";
        String sql = "delete from staritem where id = ? ";

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,pwd);
            pt = con.prepareStatement(sql);
            pt.setInt(1,id);
            int n  =pt.executeUpdate();
            flag = n > 0;

        } catch (ClassNotFoundException | SQLException e) {
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

        return flag;
    }

    public  boolean update(staritem staritem){
        boolean flag = false;

        Connection con = null;
        PreparedStatement pt = null;
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/ssm_db";
        String user = "root";
        String pwd = "123456";
        String sql = "update  staritem set starname = ? , content = ? , price = ?  where id = ?";

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,pwd);
            pt = con.prepareStatement(sql);
            pt.setString(1,staritem.getStarname());
            pt.setString(2,staritem.getContent());
            pt.setDouble(3,staritem.getPrice());
            pt.setInt(4,staritem.getId());
            int n = pt.executeUpdate();
            flag = n > 0;

        } catch (ClassNotFoundException | SQLException e) {
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
        return flag;
    }

    public List<staritem> Search(String starname) {

        List<staritem> staritemList = new ArrayList<>();

        Connection con = null;
        Statement st = null;
        ResultSet rs = null;

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/ssm_db";
        String user = "root";
        String pwd = "123456";
        String sql = "select * from staritem where starname like '%"+starname+"%'";

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,pwd);
            st = con.createStatement();
            rs = st.executeQuery(sql);
            if (rs != null){
                while (rs.next()){
                    staritem staritem = new staritem(rs.getInt("id"),
                            rs.getString("starname"),
                            rs.getString("content"),
                            rs.getDouble("price"),
                            rs.getString("thumbnail"));
                    staritemList.add(staritem);
                }
            }else {
                System.out.println("wu~");
            }
        } catch (ClassNotFoundException | SQLException e) {
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
        return staritemList;
    }
}
