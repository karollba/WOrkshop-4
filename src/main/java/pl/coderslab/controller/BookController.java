package pl.coderslab.controller;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.service.annotation.DeleteExchange;
import pl.coderslab.model.Book;
import pl.coderslab.model.BookService;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/books")
public class BookController {

    private final BookService bookService;


    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    // wszystkie ksiazki
    @GetMapping
    public List<Book> getAll() {
        return bookService.getBooks();
    }

    @RequestMapping("/helloBook")
    public Book helloBook() {
        return new Book(1L, "9788324631766", "Thinking in Java",
                "Bruce Eckel", "Helion", "programming");
    }

    // po id
    @GetMapping("/{id}")
    public ResponseEntity<Book> getById(@PathVariable Long id) {
        Optional<Book> book = bookService.get(id);
        if (book.isPresent()) {
            return ResponseEntity.ok(book.get());
        }
        return ResponseEntity.notFound().build();
    }

    // update po id
    @PutMapping("/{id}")
    public ResponseEntity<String> update(@PathVariable Long id, @RequestBody Book book) {
        book.setId(Math.toIntExact(id));
        bookService.update(book);
        return ResponseEntity.ok("Zaktualizowano książkę");
    }

    @PostMapping
    public ResponseEntity<String> add(@RequestBody Book book) {
        bookService.add(book);
        return ResponseEntity.status(201).body("Dodano książkę");
    }

    // usuwanie ksiazki
    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable Long id) {
        bookService.delete(id);
        return ResponseEntity.ok("Usunięto książkę");
    }
}