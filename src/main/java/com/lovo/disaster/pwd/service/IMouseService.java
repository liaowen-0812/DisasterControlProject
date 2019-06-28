package com.lovo.disaster.pwd.service;

import com.lovo.disaster.pwd.bean.MouseBean;

import java.util.List;
import java.util.Map;

public interface IMouseService {
    /**
     * 添加鼠害
     * @param mouseBean 鼠害对象
     */
    public void addMouse(MouseBean mouseBean);


    /**
     * 通过鼠害id查找鼠害对象
     * @param mouseId     鼠害id
     * @return 鼠害对象
     */
    public MouseBean findById(int mouseId);

    /**
     * 动态查询鼠类对象
     * @param map
     * @return鼠类对象集合
     */
    public List<MouseBean> findAll(Map map);

    /**
     * 计算总行数
     * @return
     */
    public Integer countPage(Map map);
}
