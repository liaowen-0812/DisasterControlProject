package com.lovo.disaster.system.bean;

public class SysLog {

  /**日志id*/
  private long logId;
  /**日志内容*/
  private String logInfo;
  /**日期*/
  private String logDate;


  public long getLogId() {
    return logId;
  }

  public void setLogId(long logId) {
    this.logId = logId;
  }


  public String getLogInfo() {
    return logInfo;
  }

  public void setLogInfo(String logInfo) {
    this.logInfo = logInfo;
  }


  public String getLogDate() {
    return logDate;
  }

  public void setLogDate(String logDate) {
    this.logDate = logDate;
  }

}
