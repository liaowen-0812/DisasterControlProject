package com.lovo.disaster.prevention.preventionService;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.lovo.disaster.prevention.preventionBean.AreaBean;
import com.lovo.disaster.prevention.preventionBean.LittleClassBean;

import java.util.List;
import java.util.Map;

/**
 * 区域业务层
 */
public interface IAreaService {

    /**
     * 主页面的查询全部和动态查询
     * @param map 查询条件集合
     * @return 对象集合
     */
    public List<LittleClassBean> findAll(Map map) throws JsonProcessingException;

    /**
     * 添加区域
     * @param areaBean 区域对象
     */
    public void addArea(AreaBean areaBean);


}
