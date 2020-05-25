package org.europeguy.base;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

/**
 * @Author: qzh
 * @Since: 2020-05-25 16:50
 */
@Component
@Slf4j
public class LineRunner implements CommandLineRunner {



    @Override
    public void run(String... args) throws Exception {
        log.info("LineRunner run...");
    }
}
