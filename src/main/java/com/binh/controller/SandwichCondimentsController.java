package com.binh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SandwichCondimentsController {

    @GetMapping("/")
    public ModelAndView home(){
        ModelAndView mav = new ModelAndView("index");
        return mav;
    }

    @PostMapping("/home")
    public ModelAndView saveSandwichCondiments(@RequestParam("condiment") String [] condiments){
        ModelAndView mav = new ModelAndView("index");
        mav.addObject("condiment",condiments);
        return mav;
    }
}
