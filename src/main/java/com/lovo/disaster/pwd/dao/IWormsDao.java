package com.lovo.disaster.pwd.dao;

import com.lovo.disaster.pwd.bean.WormsBean;

import java.util.List;

public interface IWormsDao  {
    /**
     * 添加虫害
     * @param wormsBean
     */
    public void addWorms(WormsBean wormsBean);
    /**
     * 通过对象找到对象id
     * @param wormsBean 虫害对象
     * @return 虫害id
     */
    public int findByItem(WormsBean wormsBean);

    /**
     *通过对象id查找对象信息
     * @param wormsId 虫害id
     * @return 虫害对象
     */
    public WormsBean findByWormsId(int wormsId);

    /**
     * 动态查询虫害对象
     * @param wormsName 虫害名称
     * @param host 寄主
     * @return 虫害集合
     */
    public List<WormsBean> findAll(String wormsName, String host);
}
