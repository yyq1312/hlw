package com.service;

import com.jdbc.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegisterService{
    public boolean setRegister(String a1,String a2, String a3 ,double a4,double a5,String a6, double a7){
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        int a =0;
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("INSERT INTO number VALUES (null,?,?,?,?,?,?,?)");
            preparedStatement.setString(1,a1);
            preparedStatement.setString(2,a2);
            preparedStatement.setString(3,a3);
            preparedStatement.setDouble(4,a4);
            preparedStatement.setDouble(5,a5);
            preparedStatement.setString(6,a6);
            preparedStatement.setDouble(7,a7);
            a=preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
            return a==1?true:false;
    }

}
