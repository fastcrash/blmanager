package org.losensky.blmanager.services;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.BDDMockito.given;

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
    void testGetPlayerByClub() {
        //Prequisites
        given(playerRepository.findByClub(club)).willReturn(List.of(player));
        given(clubRepository.findById(club.getId())).willReturn(Optional.of(club));

        //Execute
        List<Player> players = playerService.getPlayerByClub(club.getId());

        //Verify
        assertEquals(1, players.size());
        assertEquals(club.getName(), players.get(0).getClub().getName());

    }

    @Test
    void testRemovePlayerById() {
        

    }

    @Test
    void testScoreGoal() {

    }

    @Test
    void testUpdatePlayer() {

    }
}
