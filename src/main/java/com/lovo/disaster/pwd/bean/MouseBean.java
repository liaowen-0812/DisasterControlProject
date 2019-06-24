package com.lovo.disaster.pwd.bean;

public class MouseBean<string> {
    //id
    private int mouseId;
    //鼠害名称
    private String mouseName;
    //鼠害食物
    private String food;
    //鼠害繁殖
    private String mouseBreed ;
    //鼠害天敌
    private String mouseEnemy;
    //鼠害图片地址
    private String pathImg;
    //鼠害防治措施
    private String mouseMethod;
    //鼠害主要危害
    private String mouseHarm;

    public int getMouseId() {
        return mouseId;
    }

    public void setMouseId(int mouseId) {
        this.mouseId = mouseId;
    }

    public String getMouseName() {
        return mouseName;
    }

    public void setMouseName(String mouseName) {
        this.mouseName = mouseName;
    }

    public String getFood() {
        return food;
    }

    public void setFood(String food) {
        this.food = food;
    }

    public String getMouseBreed() {
        return mouseBreed;
    }

    public void setMouseBreed(String mouseBreed) {
        this.mouseBreed = mouseBreed;
    }

    public String getMouseEnemy() {
        return mouseEnemy;
    }

    public void setMouseEnemy(String mouseEnemy) {
        this.mouseEnemy = mouseEnemy;
    }

    public String getPathImg() {
        return pathImg;
    }

    public void setPathImg(String pathImg) {
        this.pathImg = pathImg;
    }

    public String getMouseMethod() {
        return mouseMethod;
    }

    public void setMouseMethod(String mouseMethod) {
        this.mouseMethod = mouseMethod;
    }

    public String getMouseHarm() {
        return mouseHarm;
    }

    public void setMouseHarm(String mouseHarm) {
        this.mouseHarm = mouseHarm;
    }
}
