package com.lovo.disaster.pwd.service.impl;

import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.pwd.bean.WormsBean;
import com.lovo.disaster.pwd.service.IWormsService;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class WormsServiceImpl implements IWormsService {
    @Override
    public void addWorms(WormsBean wormsBean) {
        SqlSession session= GetSession.creatSession();

    }

    @Override
    public int findByItem(WormsBean wormsBean) {
        return 0;
    }

    @Override
    public WormsBean findByWormsId(int wormsId) {
        return null;
    }

    @Override
    public List<WormsBean> findAll(String wormsName, String host) {
        return null;
    }
}
