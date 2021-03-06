package com.lovo.disaster.pwd.service;

import com.lovo.disaster.pwd.bean.WormsBean;

import java.util.List;
import java.util.Map;

/**
 * 虫害业务层
 */
public interface IWormsService {
    /**
     * 添加虫害
     * @param wormsBean 虫害对象
     */
    public void addWorms(WormsBean wormsBean);


    /**
     *通过对象id查找对象信息
     * @param wormsId 虫害id
     * @return 虫害对象
     */
    public WormsBean findByWormsId(int wormsId);

    /**
     * 动态查询虫害对象
     * @param map
     * @return虫害对象集合
     */
    public List<WormsBean> findAll(Map map);

    /**
     * 计算总行数
     * @return
     */
    public Integer countPage(Map map);

}
