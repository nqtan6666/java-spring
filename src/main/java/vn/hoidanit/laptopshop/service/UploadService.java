package vn.hoidanit.laptopshop.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;

@Service
public class UploadService {
    @Autowired
    private ServletContext servletContext;

    public String uploadFile(MultipartFile file, String targetFolder) {
        String rootPath = servletContext.getRealPath("/resources/images/") + targetFolder + "/";
        File dir = new File(rootPath);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        String fileName = "";
        fileName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
        File saveFile = new File(rootPath + fileName);
        try (BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(saveFile))) {
            bos.write(file.getBytes());
            bos.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return fileName;
    }
}
