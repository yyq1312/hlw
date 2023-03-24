package com.service;

import com.jdbc.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginService {

    /**
     * 根据userName和passWordpand判断是否登录成功
     * @param userName
     * @param passWord
     * @return
     */
    public boolean checkLogin(String userName,String passWord){
        //验证登录
        String sql = "SELECT count(*) count FROM number WHERE account=? and password=?";
        Connection connection = null;
        PreparedStatement preparedStatement =null;
        ResultSet  resultSet = null;
        int result = 0;// result=0 则登录失败  result=1 则登录成功
        try {
            //1.通过JDBCUtils获取数据库连接对象
            connection = JDBCUtils.getConnection();
            //2.通过connection获取preparedStatement对象
            preparedStatement = connection.prepareStatement(sql);
            //3.使用preparedStatement为sql语句填充参数
            preparedStatement.setString(1,userName);
            preparedStatement.setString(2,passWord);
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
        //result=0 则登录失败，返回false   result=1 则登录成功，返回true
        return result==1?true:false;
    }


    public boolean checkLogin1(String userName,String passWord){
        //验证登录
        String sql = "SELECT count(*) count FROM guanli WHERE name=? and mima=?";
        Connection connection = null;
        PreparedStatement preparedStatement =null;
        ResultSet  resultSet = null;
        int result = 0;// result=0 则登录失败  result=1 则登录成功
        try {
            //1.通过JDBCUtils获取数据库连接对象
            connection = JDBCUtils.getConnection();
            //2.通过connection获取preparedStatement对象
            preparedStatement = connection.prepareStatement(sql);
            //3.使用preparedStatement为sql语句填充参数
            preparedStatement.setString(1,userName);
            preparedStatement.setString(2,passWord);
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
        //result=0 则登录失败，返回false   result=1 则登录成功，返回true
        return result==1?true:false;
    }

}
