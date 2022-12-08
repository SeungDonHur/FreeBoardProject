package com.freecom.freeapp.board;

import java.util.Date;

public class BoardVO {
    private int pid;
    private String author;

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Date getFixdate() {
        return fixdate;
    }

    public void setFixdate(Date fixdate) {
        this.fixdate = fixdate;
    }

    private String title;
    private String content;
    private String image;
    private Date date;
    private Date fixdate;
}
