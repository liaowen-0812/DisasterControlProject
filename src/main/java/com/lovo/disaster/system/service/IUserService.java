package com.lovo.disaster.system.service;

import com.lovo.disaster.system.bean.SysRole;
import com.lovo.disaster.system.bean.SysUser;

import java.util.List;
import java.util.Map;

public interface IUserService {
    /**
     * 根据类型查询所有用户以及总页数
     * @return 用户集合
     */
    public Map findAllUserByType(String type,String currentPage);

    /**
     * 添加用户,
     * @param user 用户对象
     * @return 是否添加成功
     */
    public boolean insertUser(SysUser user);

    /**
     * 根据id删除用户
     * @param strs 用户id集合
     */
    public void delUserById(String[] strs);


    /**
     * 根据用户名查询是否有相等的情况
     * @param name 用户名
     * @return
     */
    public boolean findUserByName(String name);



    /**
     * 根据id查询用户
     * @param userId 用户id
     * @return 用户对象
     */
    public SysUser findUserById(int userId);


    /**
     * 修改用户
     * @param user 用户对象
     * @return 受影响的行数
     */
    public boolean updateUser(SysUser user);
}
