package com.binh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalculatorController {

    @GetMapping("/basic-calculator")
    public ModelAndView calculatorForm(){
        ModelAndView mav = new ModelAndView("calculator");
        return mav;
    }

    @PostMapping("/calculate")
    public ModelAndView calculator(float firstValue,String operation,float secondValue){
        ModelAndView mav = new ModelAndView("calculator");
        float result = 0;
        switch (operation){
            case "cong":
                result= firstValue+secondValue;
                break;
            case "tru":
                result = firstValue-secondValue;
                break;
            case "nhan":
                result = firstValue*secondValue;
                break;
            case "chia":
                result = firstValue/secondValue;
                break;
        }

        mav.addObject("result",result);
        return mav;
    }
}
