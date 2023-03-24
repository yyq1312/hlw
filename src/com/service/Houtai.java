package com.service;

import com.bean.CommodityBeen;
import com.bean.ConfirmPurchase;
import com.bean.NumberBeen;
import com.jdbc.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;




public class Houtai {
    public ArrayList<CommodityBeen> chaxun2(String l1,int a ){
        if (l1==null){
            l1="";
        }
        l1 = "%" + l1 + "%";
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ArrayList<CommodityBeen> sc= new ArrayList<CommodityBeen>();
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("SELECT * FROM commodity where com_name LIKE ? LIMIT ?,7");
            preparedStatement.setString(1,l1);
            preparedStatement.setInt(2,a);
            resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                CommodityBeen cs=new CommodityBeen();
                cs.setId(resultSet.getInt("id"));
                cs.setCom_name(resultSet.getString("com_name"));
                cs.setPrice(resultSet.getInt("price"));
                cs.setIntroduce(resultSet.getString("introduce"));
                sc.add(cs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return sc;
    }



    public ArrayList<CommodityBeen> chaxun2(int a){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ArrayList<CommodityBeen> sc= new ArrayList<CommodityBeen>();
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("SELECT * FROM commodity LIMIT ?,7");
            preparedStatement.setInt(1,a);
            resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                CommodityBeen cs=new CommodityBeen();
                cs.setId(resultSet.getInt("id"));
                cs.setCom_name(resultSet.getString("com_name"));
                cs.setPrice(resultSet.getInt("price"));
                cs.setIntroduce(resultSet.getString("introduce"));
                sc.add(cs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return sc;
    }


    public ArrayList<NumberBeen> chaxun1(String l1, int a1){
        if (l1==null){
            l1="";
        }
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ArrayList<NumberBeen> sc= new ArrayList<NumberBeen>();
        l1 = "%" + l1 + "%";

        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("SELECT * FROM number where account LIKE ? LIMIT ?,7" );
            preparedStatement.setString(1,l1);
            preparedStatement.setInt(2,a1);
            resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                NumberBeen cs=new NumberBeen();
                cs.setId(resultSet.getInt("id"));
                cs.setZongqianshu(resultSet.getDouble("zongqianshu"));
                cs.setAccount(resultSet.getString("account"));
                cs.setPassword(resultSet.getString("password"));
                cs.setEmail(resultSet.getString("email"));
                cs.setQian(resultSet.getDouble("qian"));
                cs.setZheshu(resultSet.getDouble("zheshu"));
                cs.setHuiyuan(resultSet.getString("huiyuan"));

                sc.add(cs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return sc;
    }


    public ArrayList<NumberBeen> chaxun1(int a1){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ArrayList<NumberBeen> sc= new ArrayList<NumberBeen>();

        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("SELECT * FROM number LIMIT ?,7" );
            preparedStatement.setInt(1,a1);
            resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                NumberBeen cs=new NumberBeen();
                cs.setId(resultSet.getInt("id"));
                cs.setZongqianshu(resultSet.getDouble("zongqianshu"));
                cs.setAccount(resultSet.getString("account"));
                cs.setPassword(resultSet.getString("password"));
                cs.setEmail(resultSet.getString("email"));
                cs.setQian(resultSet.getDouble("qian"));
                cs.setZheshu(resultSet.getDouble("zheshu"));
                cs.setHuiyuan(resultSet.getString("huiyuan"));
                sc.add(cs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return sc;
    }


    public ArrayList<ConfirmPurchase> chaxun3(String l1 ,int a1 ){
        if (l1==null){
            l1="";
        }
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ArrayList<ConfirmPurchase> sc= new ArrayList<ConfirmPurchase>();
        l1 = "%" + l1 + "%";
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("SELECT * FROM shoppingrecords where purchase_account LIKE ? LIMIT ?,7");
            preparedStatement.setString(1,l1);
            preparedStatement.setInt(2,a1);
            resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                ConfirmPurchase cs=new ConfirmPurchase();
                cs.setId(resultSet.getInt("id"));
                cs.setPurchase_account(resultSet.getString("purchase_account"));
                cs.setPurchase_time(resultSet.getString("purchase_time"));
                cs.setOrder_number(resultSet.getString("order_number"));
                cs.setPurchase_amount(resultSet.getString("purchase_amount"));
                sc.add(cs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return sc;
    }


    public ArrayList<ConfirmPurchase> chaxun3(int a1){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ArrayList<ConfirmPurchase> sc= new ArrayList<ConfirmPurchase>();
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("SELECT * FROM shoppingrecords LIMIT ?,7");
            preparedStatement.setInt(1,a1);
            resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                ConfirmPurchase cs=new ConfirmPurchase();
                cs.setId(resultSet.getInt("id"));
                cs.setPurchase_account(resultSet.getString("purchase_account"));
                cs.setPurchase_time(resultSet.getString("purchase_time"));
                cs.setOrder_number(resultSet.getString("order_number"));
                cs.setPurchase_amount(resultSet.getString("purchase_amount"));
                sc.add(cs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return sc;
    }



    public  void  shanchu2(String a1){
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("DELETE FROM commodity WHERE id=?");
            preparedStatement.setString(1,a1);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
    }

    public  void  shanchu1(String a1){
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;

        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("DELETE FROM number WHERE id=?");
            preparedStatement.setString(1,a1);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
    }

    public  void  shanchu3(String a1){
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;

        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("DELETE FROM shoppingrecords WHERE id=?");
            preparedStatement.setString(1,a1);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
    }


    public void tianjia(String a1,String a2, String a3){
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        try {
            connection=JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement(" INSERT INTO commodity VALUES (null,?,?,?,?)");
            preparedStatement.setString(1,a1);
            preparedStatement.setString(2,a2);
            preparedStatement.setString(3,a3);
            preparedStatement.setString(4,null);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void xiugai1(String a1,String a2, String a3,int b1) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection=JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("UPDATE number SET account=?,password=?, email=? WHERE id=?");
            preparedStatement.setString(1,a1);
            preparedStatement.setString(2,a2);
            preparedStatement.setString(3,a3);
            preparedStatement.setInt(4,b1);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    public void xiugai2(String a1,String a2, String a3,int b1) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection=JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("UPDATE commodity SET com_name=?,introduce=?, price=? WHERE id=?");
            preparedStatement.setString(1,a1);
            preparedStatement.setString(2,a2);
            preparedStatement.setString(3,a3);
            preparedStatement.setInt(4,b1);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public void xiugai3(String a1,String a2, String a3) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection=JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("UPDATE commodity SET purchase_account=?,purchase_time=?WHERE order_number=?");
            preparedStatement.setString(1,a1);
            preparedStatement.setString(2,a2);
            preparedStatement.setString(3,a3);
        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
