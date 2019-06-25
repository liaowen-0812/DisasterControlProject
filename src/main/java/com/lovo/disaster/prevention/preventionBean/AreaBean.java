package com.lovo.disaster.prevention.preventionBean;


import java.util.List;

/**
 * 区域实体类
 */
public class AreaBean {

    //id
    private int areaId;
    //区域名
    private String areaName;
    //区域林种
    private String areaTreeType;
    //区域优势树种
    private String areaGoodTree;
    //区域地类
    private XLBean areaAdressId;


    public int getAreaId() {
        return areaId;
    }

    public void setAreaId(int areaId) {
        this.areaId = areaId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getAreaTreeType() {
        return areaTreeType;
    }

    public void setAreaTreeType(String areaTreeType) {
        this.areaTreeType = areaTreeType;
    }

    public String getAreaGoodTree() {
        return areaGoodTree;
    }

    public void setAreaGoodTree(String areaGoodTree) {
        this.areaGoodTree = areaGoodTree;
    }

    public XLBean getAreaAdressId() {
        return areaAdressId;
    }

    public void setAreaAdressId(XLBean areaAdressId) {
        this.areaAdressId = areaAdressId;
    }
}
