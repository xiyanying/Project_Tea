package com.itcase.project.expection;

import com.itcase.project.enetity.BaseResponse;
import com.itcase.project.enetity.Enum.ReturnCode;
import com.itcase.project.enetity.ResponseData;
import com.itcase.project.util.BaseResponseBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Description
 * 异常拦截器
 *
 */
@ControllerAdvice
@ResponseBody
public class GlobalExceptionHandler {
    private static final Logger logger = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    @ExceptionHandler(RuntimeException.class)
    public BaseResponse<String> handleRuntimeException(HttpServletRequest req, RuntimeException ex) {
        logger.error("RuntimeException url = {}, error = {}",req.getRequestURI(), ex);
        //return new ResponseEntity<>(ex.getMessage(), HttpStatus.BAD_REQUEST);
        return BaseResponseBuilder.buildBaseResponse(ReturnCode.UNKNOWN_ERROR.getCode(), ReturnCode.UNKNOWN_ERROR.getMsg());
    }


    /**
     * 用来捕获404，400这种无法到达controller的错误
     * @param ex
     * @return
     * @throws Exception
     */
    @ResponseBody
    @ExceptionHandler(value = Exception.class)
    public ResponseData defaultErrorHandler(Exception ex) throws Exception {
        logger.error("", ex);
        ResponseData<Object> result = new ResponseData<>();
        result.setMessage(ex.getMessage());
        if (ex instanceof org.springframework.web.servlet.NoHandlerFoundException) {
            result.setCode(404);
        } else {
            result.setCode(500);
        }
        result.setData(null);
        result.setSuccess(false);
        return result;
    }
}
