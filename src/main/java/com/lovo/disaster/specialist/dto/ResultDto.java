package com.lovo.disaster.specialist.dto;

public class ResultDto {
    private String doctorEventDate;
    private String doctorEventResult;
    private String list;

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

    public String getList() {
        return list;
    }

    public void setList(String list) {
        this.list = list;
    }
}
