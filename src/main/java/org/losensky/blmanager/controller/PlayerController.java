package org.losensky.blmanager.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import org.losensky.blmanager.data.Player;
import org.losensky.blmanager.services.PlayerService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;



@RestController
@ResponseBody
@RequestMapping("/api/players")
public class PlayerController {

    PlayerService playerService;

    public PlayerController(PlayerService playerService) {
        this.playerService = playerService;
    }
    
    @GetMapping("/byClub/{clubId}")
    public List<Player> getPlayersByClub(@PathVariable Long clubId) {        
        return playerService.getPlayerByClub(clubId);
    }
    

    @GetMapping("/top10")
    public String getTop10Players() {
        return "<table>" +
                "<tr><th>Player Name</th><th>Goals Scored</th></tr>" +
                playerService.getTopScorer().stream()
                        .map(player -> "<tr><td>" + player.getName() + "</td><td>" + player.getGoalsScored() + "</td></tr>")
                        .reduce("", String::concat) +
                "</table>";
    }

}
