package com.lovo.disaster.warehouse.service;

import com.lovo.disaster.warehouse.entity.SysType;

import java.util.List;

public interface ITypeService {
    /**
     * 根据 下拉的val 查询 下拉类型ID
     * @param key 下拉类型 的val
     * @return 下拉类型ID
     */
    public long findTypeByKey(int key,String typeName);

    /**
     * 根据下拉类型，查找所有下拉（初始化界面）
     * @param type
     * @return
     */
    public List<SysType> findAlltype(String type);

}
