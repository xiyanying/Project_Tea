package com.itcase.project.enetity.Enum;

public enum ReturnCode {

    //公共编码
    SUCCESS(200, "成功"),
    ERROR(-1, "失败"),
    URL_NOT_EXIST(400, "URL路径不存在"),
    UNKNOWN_ERROR(-100,  "请求异常");



    private Integer code;
    private String msg;

    ReturnCode(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public static String getMsg(Integer code) {
        for (ReturnCode c : ReturnCode.values()) {
            if (c.getCode().equals(code)) {
                return c.getMsg();
            }
        }
        return null;
    }

}
