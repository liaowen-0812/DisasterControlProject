package com.lovo.disaster.warehouse.entity;

/**
 * 药品/器械类
 */
public class SysDrug {

  private long drugId;
  private String drugName;//药品名
  private SysType type1;//类型
  private SysType type2;//类别
  private String drugUseWay; //用途
  private long drugNum;//库存数量

  public SysType getType1() {
    return type1;
  }

  public void setType1(SysType type1) {
    this.type1 = type1;
  }

  public SysType getType2() {
    return type2;
  }

  public void setType2(SysType type2) {
    this.type2 = type2;
  }

  public long getDrugId() {
    return drugId;
  }

  public void setDrugId(long drugId) {
    this.drugId = drugId;
  }


  public String getDrugName() {
    return drugName;
  }

  public void setDrugName(String drugName) {
    this.drugName = drugName;
  }

  public String getDrugUseWay() {
    return drugUseWay;
  }

  public void setDrugUseWay(String drugUseWay) {
    this.drugUseWay = drugUseWay;
  }


  public long getDrugNum() {
    return drugNum;
  }

  public void setDrugNum(long drugNum) {
    this.drugNum = drugNum;
  }

}
