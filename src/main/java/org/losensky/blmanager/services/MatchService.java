package org.losensky.blmanager.services;

import java.util.List;

import org.losensky.blmanager.Utils.MatchUtils;
import org.losensky.blmanager.data.Club;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;



@Service
public class MatchService {

    ClubService clubService;
    PlayerService playerService;
    MatchUtils matchUtils;
    Logger log = LoggerFactory.getLogger(MatchService.class);

    public MatchService(ClubService clubService, PlayerService playerService, MatchUtils matchUtils) {
        this.clubService = clubService;
        this.playerService = playerService;
        this.matchUtils = matchUtils;
    }

    public String simulateMatch() {
        // Get the clubs
        List<Club> clubs = matchUtils.getRandomClubs();
        Club homeClub = clubs.get(0);
        Club awayClub = clubs.get(1);

        // Simulate the match
        int[] score = matchUtils.getRandomScore();
        int homeScore = score[0];
        int awayScore = score[1];

        // Update the clubs' points and goals
        homeClub.setPoints(homeClub.getPoints() + (homeScore > awayScore ? 3 : (homeScore == awayScore ? 1 : 0)));
        awayClub.setPoints(awayClub.getPoints() + (awayScore > homeScore ? 3 : (awayScore == homeScore ? 1 : 0)));

        // Update the players' stats (goals, cards, etc.)
        // This is a simplified example; you might want to update individual player stats based on the match events

        // Save the updated clubs
        clubService.updateClub(homeClub);
        clubService.updateClub(awayClub);
        
        log.info("Match simulated: " + homeClub.getName() + " " + homeScore + " - " + awayScore + " " + awayClub.getName());

        return "Match Result: " + homeClub.getName() + " " + homeScore + " - " + awayScore + " " + awayClub.getName();
    }
    
}
