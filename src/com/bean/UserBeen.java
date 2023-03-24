package com.bean;

public class UserBeen {
    private int id;  //用户唯一标识

    private String name;    //用户昵称

    private int al_purchased;   //用户已购买游戏

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAl_purchased() {
        return al_purchased;
    }

    public void setAl_purchased(int al_purchased) {
        this.al_purchased = al_purchased;
    }

}
