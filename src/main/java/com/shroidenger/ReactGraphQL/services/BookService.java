package com.shroidenger.ReactGraphQL.services;

import java.util.List;
import java.util.UUID;

import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.stereotype.Service;

import com.shroidenger.ReactGraphQL.entities.Books;
import com.shroidenger.ReactGraphQL.exceptions.BookNotFoundException;
import com.shroidenger.ReactGraphQL.repo.BookRepository;

@Service
public class BookService {

    private final BookRepository bookRepository;
    private static final Logger logger = LoggerFactory.getLogger(BookService.class);

    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public List<Books> getAllBooks() {
        logger.info("Inside Service getAllBooks");
        return bookRepository.findAll();
    }

    public List<Books> searchBooksByAuthors(String author) {
        logger.info("Inside Service searchBooksByAuthor");
        return bookRepository.findByAuthors(author);
    }

    public Books searchBookById(UUID id) {
        logger.info("Inside Service searchBookById");
        return bookRepository.findById(id)
            .orElseThrow(() -> {
                logger.error("Inside Service searchBookById");
                return new BookNotFoundException(id.toString());
            });
    }
    
}
