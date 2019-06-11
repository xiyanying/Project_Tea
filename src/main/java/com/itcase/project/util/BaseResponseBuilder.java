package com.itcase.project.util;

import com.itcase.project.enetity.BaseResponse;
import com.itcase.project.enetity.Enum.ReturnCode;

public class BaseResponseBuilder {
    public static <T> BaseResponse<T> buildSuccessBaseResponse(T t) {
        BaseResponse<T> result = new BaseResponse<>();
        result.setCode(ReturnCode.SUCCESS.getCode());
        result.setMessage(ReturnCode.SUCCESS.getMsg());
        result.setData(t);
        return result;
    }

    public static <T> BaseResponse<T> buildErrorBaseResponse(ReturnCode returnCode) {
        BaseResponse<T> result = new BaseResponse<>();
        result.setCode(returnCode.getCode());
        result.setMessage(returnCode.getMsg());
        return result;
    }

    public static <T> BaseResponse<T> buildBaseResponse(ReturnCode returnCode, T t) {
        BaseResponse<T> result = new BaseResponse<>();
        result.setCode(returnCode.getCode());
        result.setMessage(returnCode.getMsg());
        result.setData(t);
        return result;
    }

    public static BaseResponse<String> buildBaseResponse(ReturnCode returnCode, String message) {
        BaseResponse<String> result = new BaseResponse<>();
        result.setCode(returnCode.getCode());
        result.setMessage(message);
        result.setData(null);
        return result;
    }

    public static BaseResponse<String> buildBaseResponse(Integer statusCode, String message) {
        BaseResponse<String> result = new BaseResponse<>();
        result.setCode(statusCode);
        result.setMessage(message);
        result.setData(null);
        return result;
    }

    public static <T> BaseResponse<T> buildBaseResponse(ReturnCode returnCode, String message, T t) {
        BaseResponse<T> result = new BaseResponse<>();
        result.setCode(returnCode.getCode());
        result.setMessage(message);
        result.setData(t);
        return result;
    }
}
