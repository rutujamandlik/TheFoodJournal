package com.thefoodjournal.myapp.config;

import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer{
	
	
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
    	 Path uploadDir = Paths.get("./restPics");
    	 String uploadPath = uploadDir.toFile().getAbsolutePath();
    	 registry.addResourceHandler("/restPics/**").addResourceLocations("file:/"+ uploadPath + "/");
    }
     
    private void exposeDirectory(String dirName, ResourceHandlerRegistry registry) {
       
        
         
        if (dirName.startsWith("../")) dirName = dirName.replace("../", "");
         
        
    }

}
