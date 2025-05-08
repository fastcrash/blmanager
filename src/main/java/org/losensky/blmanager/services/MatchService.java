package org.losensky.blmanager.services;

import java.util.List;

import org.losensky.blmanager.Utils.MatchUtils;
import org.losensky.blmanager.data.Club;
import org.losensky.blmanager.data.Player;
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
      
        List<Club> clubs = matchUtils.getRandomClubs();
        Club homeClub = clubs.get(0);
        Club awayClub = clubs.get(1);

      
        int[] score = matchUtils.getRandomScore();
        int homeScore = score[0];
        int awayScore = score[1];

  
        homeClub.setPoints(homeClub.getPoints() + (homeScore > awayScore ? 3 : (homeScore == awayScore ? 1 : 0)));
        homeClub.setGoalsFor(homeClub.getGoalsFor() + homeScore);
        homeClub.setGoalsAgainst(homeClub.getGoalsAgainst() + awayScore);
        homeClub.setGamesPlayed(homeClub.getGamesPlayed() + 1); 
        if (homeScore > awayScore) {
            homeClub.setWins(homeClub.getWins() + 1);
        } else if (homeScore == awayScore) {
            homeClub.setDraws(homeClub.getDraws() + 1);
        } else {
            homeClub.setLosses(homeClub.getLosses() + 1);
        }
        for (int i = 0; i < homeScore; i++) {            
            Player scorer = playerService.scoreGoal(matchUtils.getRandomPlayerFromClub(homeClub.getId()).getId());
            log.info("Goal scored by player: " + scorer.getName() + " from club: " + homeClub.getName());
        }


        awayClub.setPoints(awayClub.getPoints() + (awayScore > homeScore ? 3 : (awayScore == homeScore ? 1 : 0)));
        awayClub.setGoalsFor(awayClub.getGoalsFor() + awayScore);
        awayClub.setGoalsAgainst(awayClub.getGoalsAgainst() + homeScore);
        awayClub.setGamesPlayed(awayClub.getGamesPlayed() + 1);
        if (awayScore > homeScore) {
            awayClub.setWins(awayClub.getWins() + 1);
        } else if (awayScore == homeScore) {
            awayClub.setDraws(awayClub.getDraws() + 1);
        } else {
            awayClub.setLosses(awayClub.getLosses() + 1);
        }
        for (int i = 0; i < awayScore; i++) {            
            Player scorer = playerService.scoreGoal(matchUtils.getRandomPlayerFromClub(homeClub.getId()).getId());
            log.info("Goal scored by player: " + scorer.getName() + " from club: " + awayClub.getName());
        }

        clubService.updateClub(homeClub);
        clubService.updateClub(awayClub);
        
        log.info("Match simulated: " + homeClub.getName() + " " + homeScore + " - " + awayScore + " " + awayClub.getName());

        return "Match Result: " + homeClub.getName() + " " + homeScore + " - " + awayScore + " " + awayClub.getName();
    }
    
}
