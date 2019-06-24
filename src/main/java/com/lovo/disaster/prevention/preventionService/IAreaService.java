package com.lovo.disaster.prevention.preventionService;

import com.lovo.disaster.prevention.preventionBean.AreaBean;

import java.util.Map;

/**
 * 区域业务层
 */
public interface IAreaService {

    /**
     * 主页面的查询全部和动态查询
     * @param map 查询条件集合
     * @return json字符串，用于拼接表格
     */
    public String findAll(Map map);

    /**
     * 添加区域
     * @param areaBean 区域对象
     */
    public void addArea(AreaBean areaBean);


}
