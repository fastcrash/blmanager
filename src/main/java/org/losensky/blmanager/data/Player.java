package org.losensky.blmanager.data;



import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Player {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Nonnull
    private String name;

    @Nonnull
    private String position;

    private int goalsScored = 0;
    private int yellowCards = 0;
    private int redCards = 0;

    @ManyToOne
    @JoinColumn(name = "club_id", nullable = false)
    @JsonBackReference
    private Club club; // The club the player belongs to

}
