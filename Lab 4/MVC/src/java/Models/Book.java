/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author LENOVO
 */
public class Book {
    public String BookID, Name, ISBN, PublishedDate;
    public int Count, Price, Sum;
    public Book() {
    }
    public Book(String BookID, String Name, String ISBN, String PublishedDate, int Count, int Price, int Sum) {
        this.BookID = BookID;
        this.Name = Name;
        this.ISBN = ISBN;
        this.PublishedDate = PublishedDate;
        this.Count = Count;
        this.Price = Price;
        this.Sum = Sum;
    }
}
