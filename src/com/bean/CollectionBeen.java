package com.bean;

public class CollectionBeen {
    private int id;  //订单主键
    private int com_id;    //商品唯一标识
    private String com_name;   //商品名称
    private int user_id;     //购买用户
    private String user_name;   //用户名字
    private String picture;  //商品图片

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCom_id() {
        return com_id;
    }

    public void setCom_id(int com_id) {
        this.com_id = com_id;
    }

    public String getCom_name() {
        return com_name;
    }

    public void setCom_name(String com_name) {
        this.com_name = com_name;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}
