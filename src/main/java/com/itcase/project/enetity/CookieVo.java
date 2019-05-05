package com.itcase.project.enetity;

import org.springframework.web.multipart.MultipartFile;

public class CookieVo extends Cookie {

    private MultipartFile upload;

    public MultipartFile getUpload() {
        return upload;
    }

    public void setUpload(MultipartFile upload) {
        this.upload = upload;
    }
}
