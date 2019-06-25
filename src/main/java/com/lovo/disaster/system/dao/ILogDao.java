package com.lovo.disaster.system.dao;

import com.lovo.disaster.system.bean.SysLog;

import java.util.List;
import java.util.Map;

public interface ILogDao {
    /**
     * 根据类型查询所有用户并分页
     * @param map 类型和页面对象
     * @return 用户集合
     */
    public List<SysLog> findAllLogByDay(Map map);

    /**
     * 计算总行数
     * @param map 条件
     * @return 总条数
     */
    public int findLogCount(Map map);

    /**
     * 根据内容和时间添加日志
     * @param log 日志对象
     */
    public void insertLog(SysLog log);
}
