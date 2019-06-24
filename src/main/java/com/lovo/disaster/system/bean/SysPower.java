package com.lovo.disaster.system.bean;

public class SysPower {

  /**权限id*/
  private long powerId;
  /**角色对象*/
  private SysRole roleObj;
  /**权限名*/
  private String powerName;
  /**权限资源*/
  private String powerSource;
  /**权限标识*/
  private String powerTag;


  public long getPowerId() {
    return powerId;
  }

  public void setPowerId(long powerId) {
    this.powerId = powerId;
  }

  public SysRole getRoleObj() {
    return roleObj;
  }

  public void setRoleObj(SysRole roleObj) {
    this.roleObj = roleObj;
  }

  public String getPowerName() {
    return powerName;
  }

  public void setPowerName(String powerName) {
    this.powerName = powerName;
  }


  public String getPowerSource() {
    return powerSource;
  }

  public void setPowerSource(String powerSource) {
    this.powerSource = powerSource;
  }


  public String getPowerTag() {
    return powerTag;
  }

  public void setPowerTag(String powerTag) {
    this.powerTag = powerTag;
  }

}
