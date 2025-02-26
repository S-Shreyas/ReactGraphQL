package com.shroidenger.ReactGraphQL.exceptions;

public class BookNotFoundException extends RuntimeException {
    public BookNotFoundException(String errorId) {
        super("Book not found with id: " + errorId);
    }
}
