package com.shroidenger.ReactGraphQL.controllers;

import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import com.shroidenger.ReactGraphQL.entities.Books;
import com.shroidenger.ReactGraphQL.services.BookService;

@Controller
public class BookGraphQLController {

    private final BookService bookService;
    private static final Logger logger = LoggerFactory.getLogger(BookService.class);

    public BookGraphQLController(BookService bookService) {
        this.bookService = bookService;
    }

    @QueryMapping
    public List<Books> allBooks() {
        logger.info("Inside Controller allBooks");
        return bookService.getAllBooks();
    }

    @QueryMapping
    public List<Books> booksByAuthor(@Argument String author) {
        logger.info("Inside Controller booksByAuthor");
        return bookService.searchBooksByAuthors(author);
    }

    @QueryMapping
    public Books booksById(@Argument UUID id) {
        logger.info("Inside Controller booksById");
        return bookService.searchBookById(id);
    }

}

