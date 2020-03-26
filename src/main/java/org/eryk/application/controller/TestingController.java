package org.eryk.application.controller;

import org.eryk.application.entity.Footballer;
import org.eryk.application.entity.FootballerAttributes;
import org.eryk.application.entity.FootballerStats;
import org.eryk.application.serviceInterfaces.DataLoadServiceInterface;
import org.eryk.application.serviceInterfaces.FootballerServiceInterface;
import org.eryk.application.serviceInterfaces.SquadServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


@Controller
@RequestMapping("/test")
public class TestingController {

    @Autowired
    private FootballerServiceInterface footballerService;

    @Autowired
    private SquadServiceInterface squadService;

    @Autowired
    private DataLoadServiceInterface dataLoadServiceInterface;

    @RequestMapping("/mvc")
    public String testMVCConfiguration(Model model) {

        String message = "Mvc configuration success!";
        model.addAttribute("testMessage", message);
        return "test-page";
    }

    @RequestMapping("/Squad")
    public String showUserSquad(Model model) {

        //Get and divide footballers for first team/ the rest
        List<Footballer> loadedTeam = footballerService.getTeamFootballers("Arsenal");
        Collections.sort(loadedTeam);

        List<Footballer> firstTeamCandidates = squadService.filterCandidatesForMainSquad(loadedTeam);
        List<Footballer> theRest = new ArrayList<>(loadedTeam);

        theRest.removeAll(firstTeamCandidates);


        Footballer[] preparedSquad = squadService.prepareMainSquadTable(firstTeamCandidates);
        for (int i = 25; i < 45; i++) {
            if (preparedSquad[i] != null) {
                preparedSquad[i].setTeamStatus("U23/Reserves");
                theRest.add(preparedSquad[i]);
            }
        }

        FootballerAttributes[] firstTeamAttributes = new FootballerAttributes[25];
        FootballerStats[] firstTeamStats = new FootballerStats[25];
        Footballer[] firstTeam = new Footballer[25];

        for (int i = 0; i < 25; i++) {
            if (preparedSquad[i] != null) {
                firstTeam[i] = preparedSquad[i];
                firstTeamAttributes[i] = preparedSquad[i].getAttributes();
                firstTeamStats[i] = preparedSquad[i].getStats();
            }
        }


        List<FootballerAttributes> restAttributes = new ArrayList<>();
        List<FootballerStats> restStats = new ArrayList<>();

        for (Footballer foot : theRest) {
            if (foot != null) {
                restAttributes.add(foot.getAttributes());
                restStats.add(foot.getStats());
            }
        }

        model.addAttribute("firstTeamFootballers", firstTeam);
        model.addAttribute("firstTeamAttr", firstTeamAttributes);
        model.addAttribute("firstTeamStats", firstTeamStats);
        model.addAttribute("restFootballers", theRest);
        model.addAttribute("restAttr", restAttributes);
        model.addAttribute("restStats", restStats);
        return "squad";
    }

    @RequestMapping("/Home")
    public String showHomePage(Model model) {
        return "home";
    }

    @RequestMapping("/Scouting")
    public String showScoutingPage(Model model) {
        return "scouting";
    }

    @RequestMapping("/Coaches")
    public String showCoachesPage(Model model) {
        dataLoadServiceInterface.loadData("TestingFile","ownPlayers");
        return "coaches";
    }

    @RequestMapping("/changeTeamStatus")
    public String changeTeamStatus(@RequestParam("footballerId") int id,
                                   @RequestParam("newStatus") String newStatus) {

        Footballer footballer = footballerService.getFootballer(id);
        footballer.setTeamStatus(newStatus);
        footballerService.saveFootballer(footballer);
        return "redirect:/test/Squad";
    }

    @RequestMapping("/scoutPlayers")
    public String testScoutPlayers(@RequestParam("positions") String positions,
                                   @RequestParam("status") String status,
                                   Model model) {
    if((!positions.equals("null")&&(!status.equals("null")))){
        //If user submit form with both parameters set, server response executes code below

        List<Footballer> scouted = footballerService.getScoutedFootballers(positions,status);
        model.addAttribute("scouted", scouted);
    }
        return "/scouting";
    }
}