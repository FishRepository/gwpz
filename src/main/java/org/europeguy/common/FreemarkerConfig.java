package org.europeguy.common;

import freemarker.template.Configuration;
import freemarker.template.TemplateException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.freemarker.FreeMarkerProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import java.io.IOException;
import java.util.*;

/**
 * Freemarer 配置
 * 增加自动注入和包含配置
 */
@org.springframework.context.annotation.Configuration
public class FreemarkerConfig {
    private static Logger log = LoggerFactory.getLogger(FreemarkerConfig.class);
    @Bean
    public FreeMarkerConfigurer freeMarkerConfigurer(@Value("${auto_import}") String autoImport, @Value("${auto_include}") String autoInclude) {
        FreeMarkerConfigurer config = new FreeMarkerConfigurer();
        writerProperties(config);
        Configuration configuration = null;
        try {
            configuration = config.createConfiguration();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (TemplateException e) {
            e.printStackTrace();
        }
        setAutoImport(autoImport,configuration);
        setAutoInclude(autoInclude,configuration);
        config.setConfiguration(configuration);
        return config;
    }

    @Autowired
    private FreeMarkerProperties properties;

    private void writerProperties(FreeMarkerConfigurer config) {
        config.setTemplateLoaderPaths(this.properties.getTemplateLoaderPath());
        config.setPreferFileSystemAccess(this.properties.isPreferFileSystemAccess());
        config.setDefaultEncoding(this.properties.getCharsetName());
        Properties settings = new Properties();
        settings.putAll(this.properties.getSettings());
        config.setFreemarkerSettings(settings);
    }
    private void setAutoImport(String autoImport,Configuration configuration) {
        if("_".equals(autoImport.trim())) {
            return;
        }
        String[] imports = autoImport.split(";");
        Map<String,String> importMap = new HashMap<String,String>(imports.length);
        for (String s : imports) {
            String[] keyValue = s.split("as");
            if (keyValue.length != 2) {
                log.error("freemarker配置auto_import格式不正确 ");
                throw new RuntimeException("freemarker配置auto_import格式不正确");
            }
            importMap.put(keyValue[1].trim(),keyValue[0].trim());
        }
        configuration.setAutoImports(importMap);
    }
    private void setAutoInclude(final String autoInclude,Configuration configuration) {
        if ("_".equals(autoInclude.trim())) {
            return;
        }
        String[] includes = autoInclude.split(";");
        for (String s : includes) {
            System.out.println(s);
        }
        List list = new ArrayList<String>(Arrays.asList(includes));
        configuration.setAutoIncludes(list);
    }
}