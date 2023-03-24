package com.bean;

import java.util.Date;

public class ConfirmPurchase {
    private Integer id;
    private  String order_number;
    private String purchase_account;
    private String purchase_time;
    private String purchase_amount;
    private String goumaiyouxi;

    public String getGoumaiyouxi() {
        return goumaiyouxi;
    }

    public void setGoumaiyouxi(String goumaiyouxi) {
        this.goumaiyouxi = goumaiyouxi;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrder_number() {
        return order_number;
    }

    public void setOrder_number(String order_number) {
        this.order_number = order_number;
    }
    public String getPurchase_account() { return purchase_account; }

    public void setPurchase_account(String purchase_account) { this.purchase_account = purchase_account; }

    public String getPurchase_time() { return purchase_time; }

    public void setPurchase_time(String purchase_time) { this.purchase_time = purchase_time; }

    public String getPurchase_amount() { return purchase_amount; }

    public void setPurchase_amount(String purchase_amount) { this.purchase_amount = purchase_amount; }
}
