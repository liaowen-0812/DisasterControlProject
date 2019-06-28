package com.lovo.disaster.warehouse.service;

import com.lovo.disaster.warehouse.dto.LookLeaveHouseDto;
import com.lovo.disaster.warehouse.entity.SysClass;
import com.lovo.disaster.warehouse.entity.SysDrug;

import java.util.List;
import java.util.Map;

public interface IShowDrugService {
    /**
     * 动态条件查询 药品和器械
     * @param map 查询条件，都为空是查询所有
     * @return 药品/器械 集合
     */
    public List<SysDrug> findDrugByCondition(Map<String,Object> map);

    /**
     * 添加药剂/器械
     *  药剂/器械对象
     */
    public  void  addDurg(String drugName,long type1,long type2,String drugUseWay,int drugNum);

    /**
     * 获取总行数
     * @param map
     * @return 总行数
     */
    public int  allPage(Map<String,Object> map);

    /**
     * 根据条件查询出库信息
     * @param map 条件集合
     * @return 出库信息集合
     */
    public List<LookLeaveHouseDto> findAllLeaveHouseDto(Map<String,Object> map);

    /**
     * 根据条件查询出库信息
     * @param map 条件集合
     * @return 出库信息集合
     */
    public int findAllDtoCount(Map<String,Object> map);

    /**
     * 根据信息查看出库信息
     *  date1 日期
     * claaName 班级名称
     * usrName 用户名
     * @return dto集合
     */
    public List<LookLeaveHouseDto> findLookLeaveHouse(Map<String,Object> map);

    /**
     * 根据信息计算 出库药品的总条数
     * date1 日期
     *  claaName 班级名称
     * usrName 用户名
     * @return 出库药品的总条数
     */
    public int findLookLeaveCount(Map<String,Object> map);

    /**
     * 查询所有的班级
     * @return 班级集合
     */
    public List<SysClass> findAllClass();

    /**
     * 根基id查找药剂
     * @param id 药剂id
     * @return 药剂对象
     */
    public SysDrug findDrugById(int id);
}
