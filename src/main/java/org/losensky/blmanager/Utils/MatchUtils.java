package org.losensky.blmanager.Utils;

import java.util.Collections;
import java.util.List;

import org.losensky.blmanager.data.Club;
import org.losensky.blmanager.data.Player;
import org.losensky.blmanager.services.ClubService;
import org.losensky.blmanager.services.PlayerService;
import org.springframework.stereotype.Component;

@Component
public class MatchUtils {

    ClubService clubService;
    PlayerService playerService;

    public MatchUtils(ClubService clubService, PlayerService playerService) {
        this.clubService = clubService;
        this.playerService = playerService;
    }

    public List<Club> getRandomClubs() {
        List<Club> clubs = clubService.getAllClubs();
        Collections.shuffle(clubs);
        return clubs.subList(0, 2); // Get two random clubs
    }

    public int[] getRandomScore() {
        int homeScore = (int) (Math.random() * 5); // Random score between 0 and 4
        int awayScore = (int) (Math.random() * 5); // Random score between 0 and 4
        return new int[] { homeScore, awayScore };
    }   

    public Player getRandomPlayerFromClub(Long clubId) {
        List<Player> players = playerService.getPlayerByClub(clubId);
        Collections.shuffle(players);
        return players.get(0); // Get a random player from the shuffled list
    }

    
}
