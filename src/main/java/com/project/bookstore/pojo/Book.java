package com.project.bookstore.pojo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Book {
    private int bookID;
    private int bookNumber;
    private  String bookName;
    private  String author;
    private  String press;
    private  String cover;
    private  double price;
    private  String type;
    private  String content;
    private int stock;

    public Book(int bookNumber, String bookName, String author, String press, String cover, double price, String type, String content) {

    }
}
