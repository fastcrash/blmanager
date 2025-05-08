package org.losensky.blmanager.services;

import org.losensky.blmanager.data.Player;
import org.losensky.blmanager.data.PlayerRepository;
import org.springframework.stereotype.Service;

@Service
public class PlayerService {
    
    PlayerRepository playerRepository;  

    public PlayerService(PlayerRepository playerRepository) {
        this.playerRepository = playerRepository;
    }

    public Player addPlayer(Player player) {
        return playerRepository.save(player);
    }

    public Player removePlayerById(Long id) {
        if (playerRepository.existsById(id)) {
            Player player = playerRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Player not found"));
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

}
