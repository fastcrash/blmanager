package org.losensky.blmanager.data;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.mockito.InjectMocks;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

@DataJpaTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class ClubRepositoryTest {

    @Autowired
    private ClubRepository clubRepository;


    @Test
    @Order(1)
    @DisplayName("Test 1: Liste Clubs nach Punkten absteigend auf")
    void testFindAllByOrderByPointsDesc() {

        clubRepository.deleteAll();
        // Given: A list of clubs with different points
        Club club1 = new Club();
        club1.setName("FC Test 1");
        club1.setPoints(10);
        
        Club club2 = new Club();
        club2.setName("FC Test 2");
        club2.setPoints(20);
        
        Club club3 = new Club();
        club3.setName("FC Test 3");
        club3.setPoints(15);
    
        clubRepository.save(club1);
        clubRepository.save(club2);
        clubRepository.save(club3);
    
        // When: We retrieve the list of clubs ordered by points in descending order
        List<Club> clubs = clubRepository.findAllByOrderByPointsDesc();
    
        // Then: The clubs should be ordered by points in descending order
        assertEquals(3, clubs.size());
        assertEquals(20, clubs.get(0).getPoints()); // Höchste Punktzahl zuerst
        assertEquals(15, clubs.get(1).getPoints()); // Zweithöchste Punktzahl
        assertEquals(10, clubs.get(2).getPoints()); // Niedrigste Punktzahl zuletzt
    
        // Optional: Überprüfe auch die Namen
        assertEquals("FC Test 2", clubs.get(0).getName());
        assertEquals("FC Test 3", clubs.get(1).getName());
        assertEquals("FC Test 1", clubs.get(2).getName());
    }
}
