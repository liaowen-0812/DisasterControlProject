package com.lovo.disaster.system.dao;

import com.lovo.disaster.system.bean.SysRole;
import com.lovo.disaster.system.bean.SysUser;

import java.util.List;
import java.util.Map;

public interface IUserDao {
    /**
     * 根据类型查询所有用户并分页
     * @param map 类型和页面对象
     * @return 用户集合
     */
    public List<SysUser> findAllUserByType(Map map);


    /**
     * 添加用户
     * @param user 用户对象
     * @return 受影响的行数
     */
    public int insertUser(SysUser user);

    /**
     * 计算总行数
     * @param map 条件
     * @return 总条数
     */
    public int findUserCount(Map map);

    /**
     * 删除用户
     * @param id
     */
    public void delUserById(int id);

    /**
     * 根据用户名查询是否有相等的情况
     * @param name 用户名
     * @return
     */
    public int findUserByName(String name);

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
    public int updateUser(SysUser user);

    /**
     * 根据名字和密码查询用户
     * @param username 名字
     * @param password 密码
     * @return 用户
     */
    public SysUser findUserByNameandPwd(String username,String password);

}
