package com.lovo.disaster.system.service;

import java.util.Map;

public interface ILogService {
    /**
     * 根据类型查询所有用户以及总页数
     * @return 用户集合
     */
    public Map findAllLogByDay(String startDay,String lastDay, String currentPage);
}
