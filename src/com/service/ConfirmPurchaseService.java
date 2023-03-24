package com.service;

import com.bean.ConfirmPurchase;
import com.bean.ShoppingcartBeen;
import com.jdbc.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ConfirmPurchaseService {
    public ArrayList<ConfirmPurchase> chaxun(String a1){
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        String sql="SELECT*FROM shoppingcart WHERE user_id=?";
        ArrayList<ConfirmPurchase> sc=new ArrayList<ConfirmPurchase>();
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,a1);
            resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                ConfirmPurchase confirmPurchase=new ConfirmPurchase();
                confirmPurchase.setId(resultSet.getInt("id"));
                confirmPurchase.setOrder_number(resultSet.getString("order_number"));
                confirmPurchase.setPurchase_account(resultSet.getString("Purchase_account"));
                confirmPurchase.setPurchase_time(resultSet.getString("Purchase_time"));
                confirmPurchase.setPurchase_amount(resultSet.getString("Purchase_amount"));
                confirmPurchase.setGoumaiyouxi(resultSet.getString("goumaiyouxi"));
                sc.add(confirmPurchase);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return sc;
    }
    public void addCo(ConfirmPurchase confirmPurchase){
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        String sql="INSERT INTO shoppingrecords VALUES(null,?,?,?,?,?)";
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,confirmPurchase.getOrder_number());
            preparedStatement.setString(2,confirmPurchase.getPurchase_account());
            preparedStatement.setString(3,confirmPurchase.getPurchase_time());
            preparedStatement.setString(4,confirmPurchase.getPurchase_amount());
            preparedStatement.setString(5,confirmPurchase.getGoumaiyouxi());
           preparedStatement.execute();

        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
    }
}
