package com.lovo.disaster.warehouse.dao;

import com.lovo.disaster.warehouse.entity.SysDrug;

import java.util.List;
import java.util.Map;

public interface IDrugDao {

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

}
