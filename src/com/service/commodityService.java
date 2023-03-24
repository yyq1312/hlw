package com.service;

import com.bean.CommodityBeen;
import com.jdbc.JDBCUtils;
import com.sun.org.apache.regexp.internal.RE;

import java.sql.Connection;
import java.sql.JDBCType;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class commodityService {
    public ArrayList<CommodityBeen> chaxun(int a, int b, String l1) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        l1 = "%" + l1 + "%";
        String sql = "select * from commodity  WHERE com_name LIKE ? limit ?,?";
        ArrayList<CommodityBeen> sc = new ArrayList<CommodityBeen>();
        try {
            connection = JDBCUtils.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, l1);
            preparedStatement.setInt(2, a);
            preparedStatement.setInt(3, b);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                CommodityBeen cs = new CommodityBeen();
                cs.setId(resultSet.getInt("id"));
                cs.setPrice(resultSet.getInt("price"));
                cs.setCom_name(resultSet.getString("com_name"));
                cs.setIntroduce(resultSet.getString("introduce"));
                cs.setPicture(resultSet.getString("picture"));
                sc.add(cs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.close(connection, preparedStatement, resultSet);
        }
        return sc;
    }
    public ArrayList<CommodityBeen> quancha(String l1) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        l1 = "%" + l1 + "%";
        String sql = "select * from commodity  WHERE com_name LIKE ? ";
        ArrayList<CommodityBeen> sc = new ArrayList<CommodityBeen>();
        try {
            connection = JDBCUtils.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, l1);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                CommodityBeen cs = new CommodityBeen();
                cs.setId(resultSet.getInt("id"));
                cs.setPrice(resultSet.getInt("price"));
                cs.setCom_name(resultSet.getString("com_name"));
                cs.setIntroduce(resultSet.getString("introduce"));
                cs.setPicture(resultSet.getString("picture"));
                sc.add(cs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.close(connection, preparedStatement, resultSet);
        }
        return sc;
    }
}
