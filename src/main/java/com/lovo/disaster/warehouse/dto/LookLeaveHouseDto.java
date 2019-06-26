package com.lovo.disaster.warehouse.dto;

import com.lovo.disaster.warehouse.entity.SysDrug;

import java.util.List;

public class LookLeaveHouseDto {
    private String stockpileDate;//领用日期
    private  String className;//领用小班
    private String leaveHouseMan;//出库人
   private SysDrug sysDrug;//领用的物品集合
    private int leaveHouseNum;//领取的数量

    public int getLeaveHouseNum() {
        return leaveHouseNum;
    }

    public void setLeaveHouseNum(int leaveHouseNum) {
        this.leaveHouseNum = leaveHouseNum;
    }

    public String getStockpileDate() {
        return stockpileDate;
    }

    public void setStockpileDate(String stockpileDate) {
        this.stockpileDate = stockpileDate;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getLeaveHouseMan() {
        return leaveHouseMan;
    }

    public void setLeaveHouseMan(String leaveHouseMan) {
        this.leaveHouseMan = leaveHouseMan;
    }

    public SysDrug getSysDrug() {
        return sysDrug;
    }

    public void setSysDrug(SysDrug sysDrug) {
        this.sysDrug = sysDrug;
    }
}
