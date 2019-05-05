package com.itcase.project.enetity.Enum;

public enum  CategoryEnum {
    COOKIE_INFO(1,"cookie"),
    FRUIT_INFO(2,"fruit"),
    TEA_INFO(3,"tea");



    private Integer value;
    private String desc;

    CategoryEnum(Integer value, String desc) {
        this.value = value;
        this.desc = desc;
    }

    public Integer getValue() {
        return value;
    }

    public void setValue(Integer value) {
        this.value = value;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}
