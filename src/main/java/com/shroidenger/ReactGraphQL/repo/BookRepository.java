package com.shroidenger.ReactGraphQL.repo;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shroidenger.ReactGraphQL.entities.Books;


public interface BookRepository extends JpaRepository<Books, UUID> {

    List<Books> findByTitle(String title);
    List<Books> findByAuthors(String author);
    List<Books> findByGenreIgnoreCase(String genre);
    List<Books> findByPublicationYear(int publicationYear);
    
}
