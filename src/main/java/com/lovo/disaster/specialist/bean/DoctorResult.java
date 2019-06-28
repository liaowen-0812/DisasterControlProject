package com.lovo.disaster.specialist.bean;


import java.util.List;

public class DoctorResult {

  private long resultId;
  private long doctorEventId;
  private String doctorEventDate;
  private String doctorEventResult;
  private String list;

  public String getList() {
    return list;
  }

  public void setList(String list) {
    this.list = list;
  }

  public long getResultId() {
    return resultId;
  }

  public void setResultId(long resultId) {
    this.resultId = resultId;
  }


  public long getDoctorEventId() {
    return doctorEventId;
  }

  public void setDoctorEventId(long doctorEventId) {
    this.doctorEventId = doctorEventId;
  }


  public String getDoctorEventDate() {
    return doctorEventDate;
  }

  public void setDoctorEventDate(String doctorEventDate) {
    this.doctorEventDate = doctorEventDate;
  }


  public String getDoctorEventResult() {
    return doctorEventResult;
  }

  public void setDoctorEventResult(String doctorEventResult) {
    this.doctorEventResult = doctorEventResult;
  }

}
