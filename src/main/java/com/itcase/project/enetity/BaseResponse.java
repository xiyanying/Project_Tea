package com.itcase.project.enetity;

import com.itcase.project.enetity.Enum.ReturnCode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BaseResponse<T> {

    private static Logger logger = LoggerFactory.getLogger(BaseResponse.class);

    /**
     * The serialVersionUID
     */
    private static final long serialVersionUID = 6734556746639534833L;
    /**
     * 消息提示
     */
    private String message = ReturnCode.SUCCESS.getMsg();
    /**
     * 消息 状态
     */
    private Integer code = ReturnCode.SUCCESS.getCode();
    /**
     * 消息实体
     */
    private T data;

    public BaseResponse() {
    }

    /**
     * 构造返回json
     *
     * @param code
     * @param message
     * @param data
     */
    public BaseResponse(Integer code, String message, T data) {
        this.data = data;
        this.code = code;
        this.message = message;
    }

    /**
     * 构造返回json
     *
     * @param statusCode
     * @param msg
     */
    public BaseResponse(Integer statusCode, String msg) {
        this.code = statusCode;
        this.message = msg;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }


    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

}
