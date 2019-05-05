package com.itcase.project.enetity;

import com.itcase.project.enetity.Enum.CategoryEnum;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Cookie {
    private Integer cId;
    private String cName;
    private String cIntroduce;
    private String cImagePath;
    private String cOther;
    private String cType;

    public String getcType() {
        return cType;
    }

    public void setcType(String cType) {
        this.cType = cType;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public String getcIntroduce() {
        return cIntroduce;
    }

    public void setcIntroduce(String cIntroduce) {
        this.cIntroduce = cIntroduce;
    }

    public String getcImagePath() {
        return cImagePath;
    }

    public void setcImagePath(String cImagePath) {
        this.cImagePath = cImagePath;
    }

    public String getcOther() {
        return cOther;
    }

    public void setcOther(String cOther) {
        this.cOther = cOther;
    }
}
