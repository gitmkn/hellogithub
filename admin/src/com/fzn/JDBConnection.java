package com.fzn;
import java.sql.*;

import javax.swing.JOptionPane;
public class JDBConnection {
    private final String dbDrive="com.mysql.jdbc.Driver";
    private final String url = "jdbc:mysql://localhost:3306/schoolenterprise";
    private final String userName = "root";
    private final String password = "123456";
    private Connection con = null;
//ͨ�����췽���������ݿ�����
    public JDBConnection() {
        try {
            Class.forName(dbDrive).newInstance(); 
        } catch (Exception ex) {
        	JOptionPane.showConfirmDialog(null,"���ݿ����ʧ��"+ex.getMessage());
        }
    }
//�������ݿ�����
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
//�����ݿ�����ӡ��޸ĺ�ɾ���Ĳ���
    public boolean executeUpdate(String sql,String name) {
   	if(name == null){
   		name="δ֪������";
   	}
         if (con == null) {
            creatConnection();
        }
        try {
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            int iCount = stmt.executeUpdate(sql);
            System.out.println("�����ɹ�����Ӱ��ļ�¼��Ϊ" + String.valueOf(iCount)+"������¼��"+name);
		    return true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
		    return false;
        }   
    }
//�����ݿ�Ĳ�ѯ����
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
	//�ر����ݿ�
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
