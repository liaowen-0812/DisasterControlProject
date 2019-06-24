package com.lovo.disaster.pwd.bean;

public class DiseaseBean {
    //id
    private int diseaseId;
    //鼠害名称
    private String diseaseName;
    //病害病原
    private String source;
    //发病症状
    private String symptom ;
    //发病规律
    private String rule;
    //病害图片地址
    private String diseasePath;
    //病害防治措施
    private String diseaseMethod;
    //病害主要危害
    private String diseaseHarm;

    public int getDiseaseId() {
        return diseaseId;
    }

    public void setDiseaseId(int diseaseId) {
        this.diseaseId = diseaseId;
    }

    public String getDiseaseName() {
        return diseaseName;
    }

    public void setDiseaseName(String diseaseName) {
        this.diseaseName = diseaseName;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getSymptom() {
        return symptom;
    }

    public void setSymptom(String symptom) {
        this.symptom = symptom;
    }

    public String getRule() {
        return rule;
    }

    public void setRule(String rule) {
        this.rule = rule;
    }

    public String getDiseasePath() {
        return diseasePath;
    }

    public void setDiseasePath(String diseasePath) {
        this.diseasePath = diseasePath;
    }

    public String getDiseaseMethod() {
        return diseaseMethod;
    }

    public void setDiseaseMethod(String diseaseMethod) {
        this.diseaseMethod = diseaseMethod;
    }

    public String getDiseaseHarm() {
        return diseaseHarm;
    }

    public void setDiseaseHarm(String diseaseHarm) {
        this.diseaseHarm = diseaseHarm;
    }
}
