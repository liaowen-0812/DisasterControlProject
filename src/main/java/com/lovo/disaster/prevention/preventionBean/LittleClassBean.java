package com.lovo.disaster.prevention.preventionBean;

/**
 * 小班实体类
 */
public class LittleClassBean {
    //小班id(主键)
    private int classId;

    //区域id
    private AreaBean areaId;

    //小班名
    private String className;
    //小班负责人
    private String classLeaderName;
    //负责人电话
    private String classLeaderTel;
    //小班人数
    private int classPeopleNumber;
    //小班创建时间
    private String classStart;


    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public AreaBean getAreaId() {
        return areaId;
    }

    public void setAreaId(AreaBean areaId) {
        this.areaId = areaId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getClassLeaderName() {
        return classLeaderName;
    }

    public void setClassLeaderName(String classLeaderName) {
        this.classLeaderName = classLeaderName;
    }

    public String getClassLeaderTel() {
        return classLeaderTel;
    }

    public void setClassLeaderTel(String classLeaderTel) {
        this.classLeaderTel = classLeaderTel;
    }

    public int getClassPeopleNumber() {
        return classPeopleNumber;
    }

    public void setClassPeopleNumber(int classPeopleNumber) {
        this.classPeopleNumber = classPeopleNumber;
    }

    public String getClassStart() {
        return classStart;
    }

    public void setClassStart(String classStart) {
        this.classStart = classStart;
    }
}
