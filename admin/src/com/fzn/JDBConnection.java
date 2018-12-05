package com.fzn;
import java.sql.*;

import javax.swing.JOptionPane;
public class JDBConnection {
    private final String dbDrive="com.mysql.jdbc.Driver";
    private final String url = "jdbc:mysql://localhost:3306/schoolenterprise";
    private final String userName = "root";
    private final String password = "123456";
    private Connection con = null;
//通过构造方法加载数据库驱动
    public JDBConnection() {
        try {
            Class.forName(dbDrive).newInstance(); 
        } catch (Exception ex) {
        	JOptionPane.showConfirmDialog(null,"数据库加载失败"+ex.getMessage());
        }
    }
//创建数据库连接
    public boolean creatConnection() {
        try {
            con = DriverManager.getConnection(url, userName, password);
            con.setAutoCommit(true);        
} catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("creatConnectionError!");
        }
        return true;
    }
//对数据库的增加、修改和删除的操作
    public boolean executeUpdate(String sql,String name) {
   	if(name == null){
   		name="未知操作者";
   	}
         if (con == null) {
            creatConnection();
        }
        try {
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            int iCount = stmt.executeUpdate(sql);
            System.out.println("操作成功，所影响的记录数为" + String.valueOf(iCount)+"操作记录："+name);
		    return true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
		    return false;
        }   
    }
//对数据库的查询操作
    public ResultSet executeQuery(String sql) {
        ResultSet rs;
        try {
            if (con == null) {
                creatConnection();
            }
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            try {
                rs = stmt.executeQuery(sql);
            } catch (SQLException e) {
                System.out.println(e.getMessage());
                return null;
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("executeQueryError!");
            return null;
        }
        return rs;
    }
	//关闭数据库
    public void  closeConnection(){
    	if(con==null){
    		try {
				con.close();
			} catch (SQLException e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    }
}
