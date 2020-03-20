package org.eryk.application.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class TestingController {

    @RequestMapping("/mvc")
    public String testMVCConfiguration(Model model){

        String message = "Mvc configuration success!";
        model.addAttribute("testMessage",message);
        return "test-page";
    }
}
