package com.lovo.disaster.warehouse.entity;

public class SysUser {

  private long userId;
  private long roleId;
  private String userName;
  private String userPwd;
  private String userTrueName;


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public long getRoleId() {
    return roleId;
  }

  public void setRoleId(long roleId) {
    this.roleId = roleId;
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
