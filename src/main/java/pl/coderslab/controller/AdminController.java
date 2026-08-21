package pl.coderslab.controller;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.model.Book;
import pl.coderslab.model.BookService;

@Controller
@RequestMapping("/admin/books")
public class AdminController {

    private final BookService bookService;

    public AdminController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("/list")
    public String listBooks(Model model) {
        model.addAttribute("books", bookService.getBooks());
        return "books/list";
    }

    // dodawanie
    @GetMapping("/add")
    public String addForm(){
        return "books/add";
    }

    @PostMapping("/add")
    public String addBook(Book book){
        bookService.add(book);
        return "redirect:/admin/books/list";
    }

    // edycja
    @GetMapping("/edit")
    public String editForm(@RequestParam Long id, Model model) {
        model.addAttribute("book", bookService.get(id).orElse(null));
        return "books/edit";
    }


    @PostMapping("/edit")
    public String editBook(Book book) {
        bookService.update(book);
        return "redirect:/admin/books/list";
    }

    // usuwanie
    @GetMapping("/delete")
    public String deleteForm(@RequestParam Long id) {
       bookService.delete(id);
       return "redirect:/admin/books/list";
    }


}
