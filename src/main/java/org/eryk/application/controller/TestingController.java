package org.eryk.application.controller;

import org.eryk.application.entity.Footballer;
import org.eryk.application.entity.FootballerAttributes;
import org.eryk.application.entity.FootballerStats;
import org.eryk.application.serviceInterfaces.FootballerServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

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

    @RequestMapping("/Squad")
    public String testShowingFootballers(Model model){

        List<Footballer> list = footballerService.getTeamFootballers("Arsenal");
        List<FootballerAttributes> attributes = new ArrayList<>();
        List<FootballerStats> stats = new ArrayList<>();

        for(Footballer foot: list){
            attributes.add(foot.getAttributes());
            stats.add(foot.getStats());
        }

        model.addAttribute("footballersList", list);
        model.addAttribute("footballerAttributes", attributes);
        model.addAttribute("footballerStats", stats);
        return "squad";
    }

    @RequestMapping("/Home")
    public String showHomePage(Model model){
        return "home";
    }

    @RequestMapping("/Scouting")
    public String showScoutingPage(Model model){
        return "scouting";
    }

    @RequestMapping("/Coaches")
    public String showCoachesPage(Model model){
        return "coaches";
    }

    @RequestMapping("/changeTeamStatus")
    public String changeTeamStatus(@RequestParam("footballerId") int id){

        Footballer footballer = footballerService.getFootballer(id);
        footballer.setTeamStatus("U23/Reserves");
        footballerService.saveFootballer(footballer);
        return "redirect:/test/Squad";
    }
}
