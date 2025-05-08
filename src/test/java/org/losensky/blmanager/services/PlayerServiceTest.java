package org.losensky.blmanager.services;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.BDDMockito.given;
import static org.mockito.BDDMockito.willDoNothing;

import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.losensky.blmanager.data.Club;
import org.losensky.blmanager.data.ClubRepository;
import org.losensky.blmanager.data.Player;
import org.losensky.blmanager.data.PlayerRepository;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
public class PlayerServiceTest {

    @Mock
    private PlayerRepository playerRepository;

    @Mock
    private ClubRepository clubRepository;

    @InjectMocks
    private PlayerService playerService;

    Player player;
    Club club;

    @BeforeEach
    void setUp() {
        club = new Club();
        club.setId(1L);
        club.setName("Test Club");

        player = new Player();
        player.setId(1L);
        player.setName("Test Player");
        player.setClub(club);
        player.setRedCards(0);

    }

    @Test
    void testAddPlayer() {
        // Prequisites
        given(playerRepository.save(player)).willReturn(player);

        // Execute
        Player savedPlayer = playerService.addPlayer(player);

        // Verify
        assertEquals(player, savedPlayer);
    }

    @Test
    void testAddRedCard() {
        // Prequisites
        given(playerRepository.existsById(player.getId())).willReturn(true);
        given(playerRepository.findById(player.getId())).willReturn(Optional.of(player));
        given(playerRepository.save(player)).willReturn(player);

        // Execute
        Player updatedPlayer = playerService.addRedCard(player.getId());

        // Verify
        assertEquals(1, updatedPlayer.getRedCards());

    }

    @Test
    void testAddRedCardNotFound() {
        // Prequisites
        given(playerRepository.existsById(player.getId())).willReturn(false);

        // Execute & Verify
        try {
            playerService.addRedCard(player.getId());
        } catch (IllegalArgumentException e) {
            assertEquals("Player with id " + player.getId() + " does not exist.", e.getMessage());
        }
    }

    @Test
    void testAddYellowCard() {
        // Prequisites
        given(playerRepository.existsById(player.getId())).willReturn(true);
        given(playerRepository.findById(player.getId())).willReturn(Optional.of(player));
        given(playerRepository.save(player)).willReturn(player);

        // Execute
        Player updatedPlayer = playerService.addYellowCard(player.getId());

        // Verify
        assertEquals(1, updatedPlayer.getYellowCards());

    }

    @Test   
    void testAddYellowCardNotFound() {
        // Prequisites
        given(playerRepository.existsById(player.getId())).willReturn(false);

        // Execute & Verify
        try {
            playerService.addYellowCard(player.getId());
        } catch (IllegalArgumentException e) {
            assertEquals("Player with id " + player.getId() + " does not exist.", e.getMessage());
        }
    }

    @Test
    void testGetPlayerByClub() {
        // Prequisites
        given(playerRepository.findByClub(club)).willReturn(List.of(player));
        given(clubRepository.findById(club.getId())).willReturn(Optional.of(club));

        // Execute
        List<Player> players = playerService.getPlayerByClub(club.getId());

        // Verify
        assertEquals(1, players.size());
        assertEquals(club.getName(), players.get(0).getClub().getName());

    }

    @Test
    void testRemovePlayerById() {
        // Prequisites
        given(playerRepository.existsById(player.getId())).willReturn(true);
        given(playerRepository.findById(player.getId())).willReturn(Optional.of(player));
        willDoNothing().given(playerRepository).deleteById(player.getId());

        // Execute
        Player removedPlayer = playerService.removePlayerById(player.getId());

        // Verify
        assertEquals(player, removedPlayer);

    }

    @Test
    void testRemovePlayerByIdNotFound() {
        // Prequisites
        given(playerRepository.existsById(player.getId())).willReturn(false);

        // Execute & Verify
        try {
            playerService.removePlayerById(player.getId());
        } catch (IllegalArgumentException e) {
            assertEquals("Player with id " + player.getId() + " does not exist.", e.getMessage());
        }
    }

    @Test
    void testScoreGoal() {
        // Prequisites
        given(playerRepository.existsById(player.getId())).willReturn(true);
        given(playerRepository.findById(player.getId())).willReturn(Optional.of(player));
        given(playerRepository.save(player)).willReturn(player);

        // Execute
        Player updatedPlayer = playerService.scoreGoal(player.getId());

        // Verify
        assertEquals(1, updatedPlayer.getGoalsScored());
    }

    @Test
    void testScoreGoalNotFound() {
        // Prequisites
        given(playerRepository.existsById(player.getId())).willReturn(false);

        // Execute & Verify
        try {
            playerService.scoreGoal(player.getId());
        } catch (IllegalArgumentException e) {
            assertEquals("Player with id " + player.getId() + " does not exist.", e.getMessage());
        }
    }

    @Test
    void testUpdatePlayer() {
        // Prequisites
        given(playerRepository.existsById(player.getId())).willReturn(true);
        given(playerRepository.save(player)).willReturn(player);

        // Execute
        player.setName("New Name");
        Player updatedPlayer = playerService.updatePlayer(player);

        // Verify
        assertEquals("New Name", updatedPlayer.getName());

    }

    @Test
    void testUpdatePlayerNotFound() {
        // Prequisites
        given(playerRepository.existsById(player.getId())).willReturn(false);

        // Execute & Verify
        try {
            playerService.updatePlayer(player);
        } catch (IllegalArgumentException e) {
            assertEquals("Player with id " + player.getId() + " does not exist.", e.getMessage());
        }
    }

    @Test
    void testGetTopScorer() {
        // Prequisites
        given(playerRepository.findTop10ByOrderByGoalsScoredDesc()).willReturn(List.of(player));

        // Execute
        List<Player> topScorers = playerService.getTopScorer();

        // Verify
        assertEquals(1, topScorers.size());
        assertEquals(player, topScorers.get(0));
    }
}
