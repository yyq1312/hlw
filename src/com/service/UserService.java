package com.service;

import com.jdbc.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserService {
    public boolean checkLogin(String name,String game){
        //验证登录
        Connection connection = null;
        PreparedStatement preparedStatement =null;
        ResultSet resultSet = null;
        int result = 0;// result=0 则登录失败  result=1 则登录成功
        try {
            //1.通过JDBCUtils获取数据库连接对象
            connection = JDBCUtils.getConnection();
            //2.通过connection获取preparedStatement对象
            preparedStatement = connection.prepareStatement("SELECT count(*) count FROM `user` WHERE name=? and al_purchased=?");
            //3.使用preparedStatement为sql语句填充参数
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,game);
            //4.使用preparedStatement执行sql语句
            resultSet = preparedStatement.executeQuery();
            //5.往下读取一行数据
            resultSet.next();
            //6.拿到列名为count的int类型的数据
            result = resultSet.getInt("count");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return result==1?true:false;
    }
    public void tianjia(String  a1,String a2){
        Connection connection = null;
        PreparedStatement preparedStatement =null;
        ResultSet resultSet = null;
        try {
            connection=JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("INSERT INTO `user` VALUES (null,?,?)");
            preparedStatement.setString(1,a1);
            preparedStatement.setString(2,a2);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
    }
    public boolean checkLogin1(String name,String game){
        Connection connection = null;
        PreparedStatement preparedStatement =null;
        ResultSet resultSet = null;
        int result = 0;// result=0 则登录失败  result=1 则登录成功
        try {
            //1.通过JDBCUtils获取数据库连接对象
            connection = JDBCUtils.getConnection();
            //2.通过connection获取preparedStatement对象
            preparedStatement = connection.prepareStatement("SELECT count(*) count FROM `shoppingcart` WHERE user_id=? and com_name=?");
            //3.使用preparedStatement为sql语句填充参数
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,game);
            //4.使用preparedStatement执行sql语句
            resultSet = preparedStatement.executeQuery();
            //5.往下读取一行数据
            resultSet.next();
            //6.拿到列名为count的int类型的数据
            result = resultSet.getInt("count");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return result==1?true:false;
    }
}
