package com.lovo.disaster.system.bean;

public class SysUser {
  /**用户id*/
  private long userId;
  /**角色对象*/
  private SysRole roleObj;
  /**用户名*/
  private String userName;
  /**用户密码*/
  private String userPwd;
  /**真实姓名*/
  private String userTrueName;


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }

  public SysRole getRoleObj() {
    return roleObj;
  }

  public void setRoleObj(SysRole roleObj) {
    this.roleObj = roleObj;
  }

  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }


  public String getUserPwd() {
    return userPwd;
  }

  public void setUserPwd(String userPwd) {
    this.userPwd = userPwd;
  }


  public String getUserTrueName() {
    return userTrueName;
  }

  public void setUserTrueName(String userTrueName) {
    this.userTrueName = userTrueName;
  }

}
