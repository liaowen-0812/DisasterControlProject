package com.lovo.disaster.pwd.bean;

public class WormsBean {
    //id
    private int wormsId;
    //虫害名称
    private String wormsName;
    //寄主
    private String host;
    //繁殖
    private String wormsBreed;
    //天敌
    private  String wormsEnemy;
    //幼虫图片地址
    private String babyImg;
    //成虫图片地址
    private String oldImg;
    //防治措施
    private String wormsMethod;
    //主要危害
    private String wormsHarm;

    public int getWormsId() {
        return wormsId;
    }

    public void setWormsId(int wormsId) {
        this.wormsId = wormsId;
    }

    public String getWormsName() {
        return wormsName;
    }

    public void setWormsName(String wormsName) {
        this.wormsName = wormsName;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public String getWormsBreed() {
        return wormsBreed;
    }

    public void setWormsBreed(String wormsBreed) {
        this.wormsBreed = wormsBreed;
    }

    public String getWormsEnemy() {
        return wormsEnemy;
    }

    public void setWormsEnemy(String wormsEnemy) {
        this.wormsEnemy = wormsEnemy;
    }

    public String getBabyImg() {
        return babyImg;
    }

    public void setBabyImg(String babyImg) {
        this.babyImg = babyImg;
    }

    public String getOldImg() {
        return oldImg;
    }

    public void setOldImg(String oldImg) {
        this.oldImg = oldImg;
    }

    public String getWormsMethod() {
        return wormsMethod;
    }

    public void setWormsMethod(String wormsMethod) {
        this.wormsMethod = wormsMethod;
    }

    public String getWormsHarm() {
        return wormsHarm;
    }

    public void setWormsHarm(String wormsHarm) {
        this.wormsHarm = wormsHarm;
    }
}
