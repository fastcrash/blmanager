package org.losensky.blmanager.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.losensky.blmanager.services.MatchService;
import org.springframework.web.bind.annotation.PostMapping;


@RestController
@RequestMapping("/api/matches")
@ResponseBody
public class MatchController {

    MatchService matchService;

    public MatchController(MatchService matchService) {
        this.matchService = matchService;
    }

    @PostMapping("/random")
    public String generateRandomMatch() {
        
        return matchService.simulateMatch();
    }
    
    
}
