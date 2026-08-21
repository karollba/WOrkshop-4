package pl.coderslab.controller;

import pl.coderslab.model.Book;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class MockBookService implements BookService{

    private static Long nextId = 4L;

    private List<Book> list;
    public MockBookService() {
        list = new ArrayList<>();
        list.add(new Book(1L, "9788324631766", "Thinking in Java", "Bruce	Eckel", "Helion", "programming"));
        list.add(new Book(2L, "9788324627738", "Rusz	glowa	Java.", "Sierra	Kathy,	Bates	Bert", "Helion",
                "programming"));
        list.add(new Book(3L, "9780130819338", "Java	2.	Podstawy", "Cay	Horstmann,	Gary	Cornell", "Helion",
                "programming"));
    }



    @Override
    public List<Book> getBooks() {
        return List.of();
    }

    @Override
    public Optional<Book> getbyId(Long id) {
        return Optional.empty();
    }

    @Override
    public void add(Book book) {

    }

    @Override
    public void delete(Long id) {

    }

    @Override
    public void update(Book book) {

    }
}
