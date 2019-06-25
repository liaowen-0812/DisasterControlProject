package com.lovo.disaster.prevention.preventionService;

import com.lovo.disaster.prevention.preventionBean.LittleClassBean;

import java.util.List;
import java.util.Map;

/**
 * 小班管理业务层接口
 */
public interface ILittleClasssService {

    /**
     * 主页内容表格，和动态查询
     * @param map 动态查询条件
     * @return 小班对象
     */
    public List<LittleClassBean> findAll(Map map);

    /**
     * 添加小班
     * @param classBean 小班对象
     */
    public void addLittleClass(LittleClassBean classBean);

    /**
     * 根据用户选择行的id查看小班信息
     * @param littleClassId 用户选择行id
     * @return 小班对象
     */
    public List<LittleClassBean> faindById(int littleClassId);

    /**
     * 根据用户选择行的id修改小班信息
     * @param classId 用户选择行id
     */
    public void updateFindByIdClass(int classId);
}
