package com.sinosteel.web;

import com.alibaba.fastjson.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Logger;

@RequestMapping("/services")
public class BaseController {
    private static Logger logger = Logger.getLogger(BaseController.class.getName());

    @Deprecated
    public HashMap<String, Object> processMultipartRequest(MultipartHttpServletRequest request) {

        HashMap<String, Object> infoMap = new HashMap<String, Object>();

        JSONObject params = JSONObject.parseObject(request.getParameter("params"));
        infoMap.put("params", params);
        logger.info("base controller: " + params);

        List<MultipartFile> files = new ArrayList<MultipartFile>();
        int totalFiles = Integer.parseInt(request.getParameter("totalFiles"));
        for (int i = 0; i < totalFiles; i++) {
            MultipartFile file = request.getFile("file" + i);
            files.add(file);
        }
        infoMap.put("files", files);

        return infoMap;
    }
}
