package com.lovo.disaster.specialist.bean;


import java.util.List;

public class DoctorResult {

  private long resultId;
  private long doctorEventId;
  private String doctorEventDate;
  private String doctorEventResult;
  private List<SysDoctor> list;

  public List<SysDoctor> getList() {
    return list;
  }

  public void setList(List<SysDoctor> list) {
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
