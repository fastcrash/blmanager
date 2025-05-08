package org.losensky.blmanager.data;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;



public interface PlayerRepository extends JpaRepository<Player, Long> {
    // Custom query methods can be defined here if needed
    // For example, find players by club or position
    List<Player> findByClub(Club club);
    List<Player> findByPosition(String position);    
  
    
}
