package com.lovo.disaster.specialist.bean;


public class DoctorResult {

  private long resultId;
  private long doctorEventId;
  private String doctorEventDate;
  private String doctorEventResult;


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
