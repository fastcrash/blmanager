package org.losensky.blmanager.controller;

import java.util.List;

import org.losensky.blmanager.data.Club;
import org.losensky.blmanager.services.ClubService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;




@RestController
@ResponseBody
@RequestMapping("/api/clubs")
public class ClubController {

    private final ClubService clubService;

    public ClubController(ClubService clubService) {
        this.clubService = clubService;
    }

    @GetMapping
    public List<Club> getClubs() {
        return clubService.getAllClubs();
    }

    @GetMapping("/tabelle")
    public String getClubsTable() {
        return "<table>" +
                "<tr><th>Name</th><th>Punkte</th><th>Tore</th><th>S</th><th>U</th><th>N</th></tr>" +
                clubService.getAllClubs().stream()
                        .map(club -> "<tr><td>" + club.getName() + "</td><td>" + club.getPoints() + "</td><td>" + club.getGoalsFor() +":"+club.getGoalsAgainst()+ "</td><td>" + club.getWins() + "</td><td>" + club.getDraws() + "</td><td>" + club.getLosses() + "<td></tr>")
                        .reduce("", String::concat) +
                "</table>";
    }

    @GetMapping("/{id}")
    public Club getClubById(@PathVariable Long id) {
        return clubService.getClubById(id).orElseThrow(() -> new IllegalArgumentException("Club not found"));
    }

    @PostMapping("/add")
    public Club addClub(@RequestBody Club club) {
        return clubService.addClub(club);
    }

    @PostMapping("/edit")
    public Club editClub(@RequestBody Club club) {
        return clubService.updateClub(club);
    }

     @DeleteMapping("/delete/{id}")
    public Club deleteClub(@PathVariable Long id) {
        return clubService.removeClubById(id);
    }
    
}
