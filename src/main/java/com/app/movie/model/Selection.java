package com.app.movie.model;

public class Selection {
    private String movieTitle;
    private String showDate;
    private String showTime;

    public Selection() {
    }

    public Selection(String movieTitle, String showDate, String showTime) {
        this.movieTitle = movieTitle;
        this.showDate = showDate;
        this.showTime = showTime;
    }

    public String getMovieTitle() {
        return movieTitle;
    }

    public void setMovieTitle(String movieTitle) {
        this.movieTitle = movieTitle;
    }

    public String getShowDate() {
        return showDate;
    }

    public void setShowDate(String showDate) {
        this.showDate = showDate;
    }

    public String getShowTime() {
        return showTime;
    }

    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }
}
