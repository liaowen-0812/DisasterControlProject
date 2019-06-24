package com.lovo.disaster.warehouse.entity;


public class DrugStockpile {

  private SysDrug sysDrug;
  private SysStockpile sysStockpile;


  public SysDrug getSysDrug() {
    return sysDrug;
  }

  public void setSysDrug(SysDrug sysDrug) {
    this.sysDrug = sysDrug;
  }

  public SysStockpile getSysStockpile() {
    return sysStockpile;
  }

  public void setSysStockpile(SysStockpile sysStockpile) {
    this.sysStockpile = sysStockpile;
  }
}
