package com.lovo.disaster.warehouse.entity;

/**
 * 出库类
 */
public class SysStockpile {

  private long stockpileId;
  private long stockpileClass;//领用班级（对象）
  private long stockpileMan; //出库人（对象）
  private String stockpileDate;//领用时间
  private long stockpileNum;//领用数量


  public long getStockpileId() {
    return stockpileId;
  }

  public void setStockpileId(long stockpileId) {
    this.stockpileId = stockpileId;
  }


  public long getStockpileClass() {
    return stockpileClass;
  }

  public void setStockpileClass(long stockpileClass) {
    this.stockpileClass = stockpileClass;
  }


  public long getStockpileMan() {
    return stockpileMan;
  }

  public void setStockpileMan(long stockpileMan) {
    this.stockpileMan = stockpileMan;
  }


  public String getStockpileDate() {
    return stockpileDate;
  }

  public void setStockpileDate(String stockpileDate) {
    this.stockpileDate = stockpileDate;
  }


  public long getStockpileNum() {
    return stockpileNum;
  }

  public void setStockpileNum(long stockpileNum) {
    this.stockpileNum = stockpileNum;
  }

}
