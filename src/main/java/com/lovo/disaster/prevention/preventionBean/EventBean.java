package com.lovo.disaster.prevention.preventionBean;

import java.util.Date;

/**
 * 事件实体
 */
public class EventBean {
    //事件id(主键)
private int eventId;

    //区域对象id
    private AreaBean areaId;

    //事件名
    private String evenName;
    //事件灾区图片地址
    private String eventImgPath;
    //事件发生时间
    private String eventDate;
    //时间灾情阶段
    private int eventStage;
    //事件灾害类型
    private int eventType;
    //事件灾害描述
    private String eventInfo;
    //事件发现途径
    private int eventFindWay;
    //事件初步损失
    private String eventLoss;
    //事件影响面积
    private String eventArea;
    //事件防治方案
    private String eventMethod;

    public int getEventId() {
        return eventId;
    }

    public void setEventId(int eventId) {
        this.eventId = eventId;
    }

    public AreaBean getAreaId() {
        return areaId;
    }

    public void setAreaId(AreaBean areaId) {
        this.areaId = areaId;
    }

    public String getEvenName() {
        return evenName;
    }

    public void setEvenName(String evenName) {
        this.evenName = evenName;
    }

    public String getEventImgPath() {
        return eventImgPath;
    }

    public void setEventImgPath(String eventImgPath) {
        this.eventImgPath = eventImgPath;
    }

    public String getEventDate() {
        return eventDate;
    }

    public void setEventDate(String eventDate) {
        this.eventDate = eventDate;
    }

    public int getEventStage() {
        return eventStage;
    }

    public void setEventStage(int eventStage) {
        this.eventStage = eventStage;
    }

    public int getEventType() {
        return eventType;
    }

    public void setEventType(int eventType) {
        this.eventType = eventType;
    }

    public String getEventInfo() {
        return eventInfo;
    }

    public void setEventInfo(String eventInfo) {
        this.eventInfo = eventInfo;
    }

    public int getEventFindWay() {
        return eventFindWay;
    }

    public void setEventFindWay(int eventFindWay) {
        this.eventFindWay = eventFindWay;
    }

    public String getEventLoss() {
        return eventLoss;
    }

    public void setEventLoss(String eventLoss) {
        this.eventLoss = eventLoss;
    }

    public String getEventArea() {
        return eventArea;
    }

    public void setEventArea(String eventArea) {
        this.eventArea = eventArea;
    }

    public String getEventMethod() {
        return eventMethod;
    }

    public void setEventMethod(String eventMethod) {
        this.eventMethod = eventMethod;
    }
}
