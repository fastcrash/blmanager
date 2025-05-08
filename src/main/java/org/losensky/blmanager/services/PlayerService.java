package org.losensky.blmanager.services;

import java.util.List;

import org.losensky.blmanager.data.ClubRepository;
import org.losensky.blmanager.data.Player;
import org.losensky.blmanager.data.PlayerRepository;
import org.springframework.stereotype.Service;

@Service
public class PlayerService {

    PlayerRepository playerRepository;
    ClubRepository clubRepository;

    public PlayerService(PlayerRepository playerRepository, ClubRepository clubRepository) {
        this.playerRepository = playerRepository;
        this.clubRepository = clubRepository;
    }

    public Player addPlayer(Player player) {
        return playerRepository.save(player);
    }

    public List<Player> getPlayerByClub(Long clubId) {
        return playerRepository.findByClub(clubRepository.findById(clubId).orElseThrow());
    }

    public Player removePlayerById(Long id) {
        if (playerRepository.existsById(id)) {
            Player player = playerRepository.findById(id)
                    .orElseThrow(() -> new IllegalArgumentException("Player not found"));
            playerRepository.deleteById(id);
            return player;
        } else {
            throw new IllegalArgumentException("Player with id " + id + " does not exist.");
        }
    }

    public Player updatePlayer(Player player) {
        if (playerRepository.existsById(player.getId())) {
            return playerRepository.save(player);
        } else {
            throw new IllegalArgumentException("Player with id " + player.getId() + " does not exist.");
        }
    }

    public Player scoreGoal(Long id) {
        if (playerRepository.existsById(id)) {
            Player player = playerRepository.findById(id)
                    .orElseThrow(() -> new IllegalArgumentException("Player not found"));
            player.setGoalsScored(player.getGoalsScored() + 1);
            return playerRepository.save(player);
        } else {
            throw new IllegalArgumentException("Player with id " + id + " does not exist.");
        }
    }

    public Player addRedCard(Long id) {
        if (playerRepository.existsById(id)) {
            Player player = playerRepository.findById(id).get();
            player.setRedCards(player.getRedCards() + 1);
            return playerRepository.save(player);
        } else {
            throw new IllegalArgumentException("Player with id " + id + " does not exist.");
        }
    }

    public Player addYellowCard(Long id) {
        if (playerRepository.existsById(id)) {
            Player player = playerRepository.findById(id)
                    .orElseThrow(() -> new IllegalArgumentException("Player not found"));
            player.setYellowCards(player.getYellowCards() + 1);
            return playerRepository.save(player);
        } else {
            throw new IllegalArgumentException("Player with id " + id + " does not exist.");
        }
    }

    public List<Player> getTopScorer() {
        return playerRepository.findTop10ByOrderByGoalsScoredDesc();
    }
}
