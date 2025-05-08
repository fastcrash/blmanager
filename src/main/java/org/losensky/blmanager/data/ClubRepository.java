package org.losensky.blmanager.data;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ClubRepository extends JpaRepository<Club, Long> {
    // Custom query methods can be defined here if needed
    // For example, find clubs by name or points
    Optional<Club> findByName(String name);    
    List<Club> findByPoints(int points);
    List<Club> findAllByOrderByPointsDesc(); // Example of a custom query to get clubs ordered by points   
}
