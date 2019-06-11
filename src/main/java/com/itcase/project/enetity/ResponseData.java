package com.itcase.project.enetity;

public class ResponseData<T> {
    private Boolean success = true;
    private Integer code = 200;
    private String message = "request successfully";
    private T data;

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
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

    @Override
    public String toString() {
        return "ResponseData{" +
                "success=" + success +
                ", code='" + code + '\'' +
                ", message='" + message + '\'' +
                ", data=" + data +
                '}';
    }

    public ResponseData() {
        super();
    }

    public ResponseData(T data) {
        this(true, 200, "request successfully", data);
    }

    public ResponseData(Boolean success, Integer code, String message) {
        this(success, code, message, null);
    }

    public ResponseData(Boolean success, Integer code, String message, T data) {
        this.success = success;
        this.code = code;
        this.message = message;
        this.data = data;
    }
}
