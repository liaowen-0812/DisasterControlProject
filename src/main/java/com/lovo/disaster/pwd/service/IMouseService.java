package com.lovo.disaster.pwd.service;

import com.lovo.disaster.pwd.bean.MouseBean;

import java.util.List;

public interface IMouseService {
    /**
     * 添加鼠害
     * @param mouseBean 鼠害对象
     */
    public void addMouse(MouseBean mouseBean);

    /**
     * 通过鼠害对象查找鼠害id
     * @param mouseBean 鼠害对象
     * @return 鼠害id
     */
    public int findByItem(MouseBean mouseBean);

    /**
     * 通过鼠害id查找鼠害对象
     * @param mouseId 鼠害id
     * @return 鼠害对象
     */
    public MouseBean findById(int mouseId);

    /**
     * 动态查询鼠害对象
     * @param mouseName 鼠害名称
     * @return 鼠害集合
     */
    public List<MouseBean> findAll(String mouseName);
}
