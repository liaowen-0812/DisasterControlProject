package com.lovo.disaster.pwd.dao;

import com.lovo.disaster.pwd.bean.WormsBean;

import java.util.List;
import java.util.Map;

public interface IWormsDao  {
    /**
     * 添加虫害
     * @param wormsBean
     */
    public void addWorms(WormsBean wormsBean);

    /**
     * 动态查询虫害对象
     * @param map
     * @return 虫害对象集合
     */
    public List<WormsBean> findAll(Map map);
}
