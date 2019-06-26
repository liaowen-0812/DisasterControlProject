package com.lovo.disaster.prevention.preventionBean;

/**
 * 下拉实体
 */
public class XLBean {
    //id
private int typeId;
//下拉名
private String typeName;
//下拉的val值
private int typeKey;
//下拉的文本框值
private String typeVal;

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public int getTypeKey() {
        return typeKey;
    }

    public void setTypeKey(int typeKey) {
        this.typeKey = typeKey;
    }

    public String getTypeVal() {
        return typeVal;
    }

    public void setTypeVal(String typeVal) {
        this.typeVal = typeVal;
    }
}
