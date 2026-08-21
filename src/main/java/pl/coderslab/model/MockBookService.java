package pl.coderslab.model;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
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
        return list;
    }

    @Override
    public Optional<Book> get(Long id) {
        return list.stream()
                .filter(b -> b.getId() == id)
                .findFirst();
    }

    @Override
    public void add(Book book) {
        book.setId(Math.toIntExact(nextId++));
        list.add(book);
    }

    @Override
    public void delete(Long id) {
        list.removeIf(b -> b.getId() == id);
    }

    @Override
    public void update(Book book) {
        delete(book.getId());
        list.add(book);
    }
}
