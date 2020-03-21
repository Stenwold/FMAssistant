package org.eryk.application.controller;

import org.eryk.application.entity.Footballer;
import org.eryk.application.serviceInterfaces.FootballerServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/test")
public class TestingController {

    @Autowired
    private FootballerServiceInterface footballerService;

    @RequestMapping("/mvc")
    public String testMVCConfiguration(Model model){

        String message = "Mvc configuration success!";
        model.addAttribute("testMessage",message);
        return "test-page";
    }

    @RequestMapping("/showFootballers")
    public String testShowingFootballers(Model model){

        List<Footballer> list = footballerService.getFootballers();

        model.addAttribute("footballersList", list);
        return "footballers";
    }
}
