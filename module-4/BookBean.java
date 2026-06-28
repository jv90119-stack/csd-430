/*
JOSE VELAZQUEZ
MODULE 4.2 ASSIGNMENT
DATE: 06/28/2026
This is the BookBean class that represents a book object with properties such as category,
title, author, year published, and description. It implements the Serializable interface
to allow instances of this class to be serialized for storage or transmission. The class
includes a no-argument constructor required for JavaBeans, a full constructor for easy
instantiation, and getter and setter methods for each property to facilitate access and
modification of the private fields.
*/


package model;

import java.io.Serializable;

public class BookBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private String category;
    private String title;
    private String author;
    private int yearPublished;
    private String description;

    /*
        No-argument constructor.
    */
    public BookBean() {
    }

    /*
        Full constructor used to quickly create BookBean objects.
    */
    public BookBean(String category, String title, String author, int yearPublished, String description) {
        this.category = category;
        this.title = title;
        this.author = author;
        this.yearPublished = yearPublished;
        this.description = description;
    }

    /*
        Getter and setter methods allow JSP pages and other Java classes
        to access and update the private fields.
    */

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getYearPublished() {
        return yearPublished;
    }

    public void setYearPublished(int yearPublished) {
        this.yearPublished = yearPublished;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}