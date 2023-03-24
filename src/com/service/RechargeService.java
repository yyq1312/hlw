package com.service;

import com.bean.NumberBeen;
import com.jdbc.JDBCUtils;

import javax.print.attribute.standard.NumberUp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class RechargeService {
    public ArrayList<NumberBeen> chuaxun(String a1){
        Connection connection = null;
        PreparedStatement preparedStatement =null;
        ResultSet resultSet = null;
        ArrayList<NumberBeen> sc= new ArrayList<>();
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("SELECT * FROM number WHERE account=?");
            preparedStatement.setString(1,a1);
            resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                NumberBeen cs =new NumberBeen();
                cs.setAccount(resultSet.getString("account"));
                cs.setPassword(resultSet.getString("password"));
                cs.setQian(resultSet.getDouble("qian"));
                cs.setZongqianshu(resultSet.getDouble("zongqianshu"));
                cs.setHuiyuan(resultSet.getString("huiyuan"));
                cs.setZheshu(resultSet.getDouble("zheshu"));
                sc.add(cs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return  sc;
    }
    public void xiugai(double a1,double a2,String a3,Double a4,String a5){
        Connection connection = null;
        PreparedStatement preparedStatement =null;
        ResultSet resultSet = null;
        try {
            connection=JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement(" UPDATE number SET qian=?,zongqianshu=?,huiyuan=?,zheshu=? WHERE account=?");
            preparedStatement.setDouble(1,a1);
            preparedStatement.setDouble(2,a2);
            preparedStatement.setString(3,a3);
            preparedStatement.setDouble(4,a4);
            preparedStatement.setString(5,a5);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
    }

    public void xiugai2(double a1,String a5){
        Connection connection = null;
        PreparedStatement preparedStatement =null;
        ResultSet resultSet = null;
        try {
            connection=JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement(" UPDATE number SET qian=? WHERE account=?");
            preparedStatement.setDouble(1,a1);
            preparedStatement.setString(2,a5);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
    }

}
