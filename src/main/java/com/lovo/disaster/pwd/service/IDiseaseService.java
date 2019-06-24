package com.lovo.disaster.pwd.service;

import com.lovo.disaster.pwd.bean.DiseaseBean;

import java.util.List;

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
    public DiseaseBean findByid(int diseaseId);

    /**
     * 动态查询病害对象
     * @param diseaseName 病害名称
     * @param symptom 发病症状
     * @return 病害对象集合
     */
    public List<DiseaseBean> findAll(String diseaseName,String symptom);
}
