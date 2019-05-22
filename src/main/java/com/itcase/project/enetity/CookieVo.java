package com.itcase.project.enetity;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.web.multipart.MultipartFile;

public class CookieVo extends Cookie {

   // @NotBlank(message = "上传图片不能为空")
    private MultipartFile upload;

    public MultipartFile getUpload() {
        return upload;
    }

    public void setUpload(MultipartFile upload) {
        this.upload = upload;
    }
}
