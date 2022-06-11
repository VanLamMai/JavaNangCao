/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author LENOVO
 */
public class MBook {
    public static List<Book> items = new ArrayList<Book>();
    public void addItem(Book book){
        items.add(book);
    }
    public List<Book> getAll(){
        return this.items;
    }
}
