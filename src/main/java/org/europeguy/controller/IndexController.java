package org.europeguy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("index")
public class IndexController extends BaseController {

    @RequestMapping
    public ModelAndView index(){
        return new ModelAndView("index/index");
    }
}
