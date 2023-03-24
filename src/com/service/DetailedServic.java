package com.service;

import com.bean.Detailed;
import com.jdbc.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DetailedServic {
    public ArrayList<Detailed> chaxun(String a1){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ArrayList<Detailed> sc= new ArrayList<Detailed>();
        try {
            connection= JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("SELECT * FROM detailed WHERE game=?");
            preparedStatement.setString(1,a1);
            resultSet=preparedStatement.executeQuery();

            while (resultSet.next()){
                Detailed cs= new Detailed();
                cs.setId(resultSet.getInt("id"));
                cs.setGame(resultSet.getString("game"));
                cs.setBeijing(resultSet.getString("beijing"));
                cs.setPurchase(resultSet.getString("purchase"));
                cs.setLunbotu1(resultSet.getString("lunbotu1"));
                cs.setLunbotu2(resultSet.getString("lunbotu2"));
                cs.setLunbotu3(resultSet.getString("lunbotu3"));
                cs.setLunbotu4(resultSet.getString("lunbotu4"));
                cs.setLunbotu5(resultSet.getString("lunbotu5"));
                cs.setFaxing(resultSet.getString("faxing"));
                cs.setMingci(resultSet.getString("mingci"));
                cs.setJiage(resultSet.getInt("jiage"));
                sc.add(cs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
        return sc;
    }
    public  void  tianjia(String a1,String a2,int a3,String a4){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection=JDBCUtils.getConnection();
            preparedStatement=connection.prepareStatement("INSERT INTO shoppingcart VALUES (null,?,?,?,?)");
            preparedStatement.setString(1,a1);
            preparedStatement.setString(2,a2);
            preparedStatement.setInt(3,a3);
            preparedStatement.setString(4,a4);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(connection,preparedStatement,resultSet);
        }
    }
}
