package com.lovo.disaster.pwd.service;

import com.lovo.disaster.pwd.bean.DiseaseBean;

import java.util.List;
import java.util.Map;

public interface IDiseaseService {
    /**
     * 添加病害信息
     * @param diseaseBean
     */
    public void addDisease(DiseaseBean diseaseBean);

    /**
     * 通过病害对象查找病害id
     * @param diseaseBean 病害对象
     * @return 病害id
     */
    public int findByItem(DiseaseBean diseaseBean);

    /**
     * 通过病害id查找病害对象
     * @param diseaseId 病害id
     * @return 病害对象
     */
    public DiseaseBean findById(int diseaseId);

    /**
     * 动态查询病害对象
     * @param map
     * @return 病害对象集合
     */
    public List<DiseaseBean> findAll(Map map);

    /**
     * 计算总行数
     * @return
     */
    public Integer countPage(Map map);
}
