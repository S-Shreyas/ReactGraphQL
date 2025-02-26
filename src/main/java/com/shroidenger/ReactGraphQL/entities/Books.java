package com.shroidenger.ReactGraphQL.entities;

import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Books {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name="title", columnDefinition = "text")
    private String title;
    
    @Column(name="authors", columnDefinition = "text")
    private String authors;
    
    @Column(name="genre", columnDefinition = "text")
    private String genre;
    
    @Column(name="publication_year", columnDefinition = "text")
    private int publicationYear;
    
    @Column(name="synopsis", columnDefinition = "text")
    private String synopsis;
   
}
