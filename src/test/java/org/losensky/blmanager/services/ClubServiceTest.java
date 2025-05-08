package org.losensky.blmanager.services;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.extension.ExtendWith;
import org.losensky.blmanager.data.Club;
import org.losensky.blmanager.data.ClubRepository;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.BDDMockito.given;
import static org.mockito.BDDMockito.willDoNothing;

import java.util.List;
import java.util.Optional;

@ExtendWith(SpringExtension.class)
public class ClubServiceTest {

    @Mock
    private ClubRepository clubRepositoryMock;

    @InjectMocks
    private ClubService clubService;

    private Club club;

    @BeforeEach
    void setUp() {
        // Initialize the club object with test data
        club = new Club();
        club.setId(1L);
        club.setName("Test Club");
        club.setPoints(100);
    }

    @Test
    void testAddClub() {
        // Preconditions
        given(clubRepositoryMock.save(club)).willReturn(club);

        // Action
        Club addedClub = clubService.addClub(club);

        // Assertions
        assertEquals(club, addedClub);
    }

    @Test
    void testGetAllClubs() {
        Club club2 = new Club();
        club2.setId(2L);
        club2.setName("Test Club 2");
        club2.setPoints(200);
        
        // Preconditions
        given(clubRepositoryMock.findAllByOrderByPointsDesc()).willReturn(List.of(club2, club));

        // Action
        List<Club> clubs = clubService.getAllClubs();

        // Assertions
        assertEquals(2, clubs.size());
        assertEquals(club2, clubs.get(0));

    }

    @Test
    void testGetClubById() {
        // Preconditions
        given(clubRepositoryMock.findById(1L)).willReturn(Optional.of(club));

        // Action
        Club foundClub = clubService.getClubById(1L).orElse(null);

        // Assertions
        assertEquals(club, foundClub);
    }

    @Test
    void testRemoveClubById() {
        // Preconditions
        given(clubRepositoryMock.existsById(1L)).willReturn(true);
        given(clubRepositoryMock.findById(1L)).willReturn(Optional.of(club));
        willDoNothing().given(clubRepositoryMock).deleteById(1L);

        // Action
        Club removedClub = clubService.removeClubById(1L);

        // Assertions
        assertEquals(club, removedClub);
    }

    @Test
    void testRemoveClubById_ClubNotFound() {
        // Preconditions
        given(clubRepositoryMock.existsById(1L)).willReturn(false);

        // Action & Assertions   
        assertThrows(IllegalArgumentException.class, () -> clubService.removeClubById(1L));
    }

    @Test
    void testUpdateClub() {
        // Preconditions
        given(clubRepositoryMock.existsById(1L)).willReturn(true);
        given(clubRepositoryMock.save(club)).willReturn(club);

        // Action
        Club updatedClub = clubService.updateClub(club);

        // Assertions
        assertEquals(club, updatedClub);
    }

    @Test
    void testUpdateClub_ClubNotFound() {
        // Preconditions
        given(clubRepositoryMock.existsById(1L)).willReturn(false);

        // Action & Assertions
        assertThrows(IllegalArgumentException.class, () -> clubService.updateClub(club));
    }
}
