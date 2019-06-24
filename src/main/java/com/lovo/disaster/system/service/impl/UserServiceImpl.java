package com.lovo.disaster.system.service.impl;

import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.system.bean.SysRole;
import com.lovo.disaster.system.bean.SysUser;
import com.lovo.disaster.system.dao.IRoleDao;
import com.lovo.disaster.system.dao.IUserDao;
import com.lovo.disaster.system.service.IUserService;
import org.apache.ibatis.session.SqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserServiceImpl implements IUserService {
    @Override
    public Map findAllUserByType(String type,String currentPage) {
        SqlSession session = GetSession.creatSession();
        IUserDao dao = session.getMapper(IUserDao.class);

        Map map = new HashMap();

        //设置类型
        map.put("roleName",type);
        //获得总行数
        int count = dao.findUserCount(map);

        //设置开始页面
        map.put("startPage",(Integer.parseInt(currentPage)-1)*5);
        map.put("countPage",5);

        //得到所有用户list集合
        List list = dao.findAllUserByType(map);
        Map m = new HashMap();
        m.put("UserList",list);
        m.put("allCount",count);

        session.close();
        return m;
    }


    /**
     * 添加用户
     * @param user 用户对象
     * @return 是否添加成功
     */
    public boolean insertUser(SysUser user){
        SqlSession session = GetSession.creatSession();
        IUserDao dao = session.getMapper(IUserDao.class);
        int temp = dao.insertUser(user);
        session.commit();
        session.close();

        if(temp==0){
            return  false;
        }else{
            return true;
        }
    }


    /**
     * 根据id删除用户
     * @param strs 用户id集合
     */
    public void delUserById(String[] strs){
        SqlSession session = GetSession.creatSession();
        IUserDao dao = session.getMapper(IUserDao.class);
        for (String s:strs) {
            if(s!=null && !"".equals(s)){
                dao.delUserById(Integer.parseInt(s));
            }
        }
        session.commit();
        session.close();
    }

    public boolean findUserByName(String name){
        SqlSession session = GetSession.creatSession();
        IUserDao dao = session.getMapper(IUserDao.class);
        int i= dao.findUserByName(name);
        session.close();
        if(i==0){
            return false;
        }else {
            return true;
        }
    }


    public SysUser findUserById(int userId){
        SqlSession session = GetSession.creatSession();
        IUserDao dao = session.getMapper(IUserDao.class);
        SysUser user = dao.findUserById(userId);
        session.close();
        return user;
    }

    /**
     * 修改用户
     * @param user 用户对象
     * @return 受影响的行数
     */
    public boolean updateUser(SysUser user){
        SqlSession session = GetSession.creatSession();
        IUserDao dao = session.getMapper(IUserDao.class);
        int i = dao.updateUser(user);
        session.commit();
        session.close();
        if(i == 0){
            return false;
        }else{
            return  true;
        }
    }
}
