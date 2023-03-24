package com.service;

import com.jdbc.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ForgetpasswordService{
    public int isPassword(String a1,String a2){
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        String sql="SELECT count(*) count FROM number WHERE account=? and email=?";
        int result = 0;
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,a1);
            preparedStatement.setString(2,a2);
            resultSet=preparedStatement.executeQuery();
            resultSet.next();
            result = resultSet.getInt("count");

        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return result;
    }
    public boolean setPassword(String a1,String a2){
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        String sql="UPDATE number SET password=? WHERE account=?";
        int a =0;
        try {
            connection=JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,a1);
            preparedStatement.setString(2,a2);
           a =preparedStatement.executeUpdate();
            System.out.println(a);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return  a==1?true:false;
    }
}
