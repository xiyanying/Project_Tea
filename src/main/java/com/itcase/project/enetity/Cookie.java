package com.itcase.project.enetity;

import com.itcase.project.enetity.Enum.CategoryEnum;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

@Setter
@Getter
@ToString
public class Cookie {
    private Integer cId;
    @NotBlank(message = "糕点名称不能为空")
    private String cName;
    @Length(max = 500,message = "意见内容不能超过500字。。。")
    private String cIntroduce;
   // @NotBlank(message = "图片路径不能为空")
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
