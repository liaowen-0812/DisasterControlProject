package com.lovo.disaster.warehouse.service;

public interface ISaveLeaveHouseInfo {
    /**
     * 保存出库信息
     * @param classId 班级id
     * @param manId 用户id
     *
     * @param date1 日期
     * @param
     */
    public void saveChuku(int classId,int manId ,String date1);

    /**
     * 保存出库信息到中间表
     * @param drugId 药品id
     * @param leaveNum 出库数量
     */
    public void saveDrugStockpile(int drugId,int leaveNum);

}
