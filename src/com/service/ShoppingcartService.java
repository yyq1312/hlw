package com.service;

import com.bean.ShoppingcartBeen;
import com.jdbc.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ShoppingcartService {
    public ArrayList<ShoppingcartBeen> setShoppingcart(String a1){
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        String sql="SELECT*FROM shoppingcart WHERE user_id=?";
        ArrayList<ShoppingcartBeen> sc=new ArrayList<ShoppingcartBeen>();
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,a1);
            resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
               ShoppingcartBeen shoppingcartBeen=new ShoppingcartBeen();
               shoppingcartBeen.setId(resultSet.getInt("id"));
               shoppingcartBeen.setCom_name(resultSet.getString("com_name"));
               shoppingcartBeen.setPrice(resultSet.getString("price"));
               shoppingcartBeen.setIntroduce(resultSet.getString("introduce"));
               sc.add(shoppingcartBeen);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return sc;
    }
    public  void DelteShopping(String a1){
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        String sql="DELETE FROM shoppingcart WHERE com_name=?";
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,a1);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
    }
}
