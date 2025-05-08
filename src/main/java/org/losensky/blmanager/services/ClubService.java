package org.losensky.blmanager.services;

import java.lang.foreign.Linker.Option;
import java.util.List;
import java.util.Optional;

import org.losensky.blmanager.data.Club;
import org.losensky.blmanager.data.ClubRepository;
import org.springframework.stereotype.Service;

@Service
public class ClubService {

    ClubRepository clubRepository;

    public ClubService(ClubRepository clubRepository) {
        this.clubRepository = clubRepository;
    }

    public Club addClub(Club club) {
        return clubRepository.save(club);
    }

    public Club removeClubById(Long id) {
        if (clubRepository.existsById(id)) {
            Club club = clubRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Club not found"));
            clubRepository.deleteById(id);
            return club;
        } else {
            throw new IllegalArgumentException("Club with id " + id + " does not exist.");
        }

    }

    public Club updateClub(Club club) {
        if (clubRepository.existsById(club.getId())) {
            return clubRepository.save(club);
        } else {
            throw new IllegalArgumentException("Club with id " + club.getId() + " does not exist.");
        }
    }

    public List<Club> getAllClubs() {
        return clubRepository.findAllByOrderByPointsDesc();
    }

    public Optional<Club> getClubById(Long id) {
        return clubRepository.findById(id);
    }
}
