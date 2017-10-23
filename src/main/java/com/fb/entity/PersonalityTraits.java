package com.fb.entity;
public class PersonalityTraits {
    private Integer id;
    private String steady;
    private String romantic;
    private String liveWavesCute;
    private String humor;
    private String free;
    private String clever;
    private String serious;
    private String simple;
    private String game;
    private String music;
    private String sport;
    private String postId;
    public PersonalityTraits() {
        super();
    }
    public PersonalityTraits(Integer id,String steady,String romantic,String liveWavesCute,String humor,String free,String clever,String serious,String simple,String game,String music,String sport,String postId) {
        super();
        this.id = id;
        this.steady = steady;
        this.romantic = romantic;
        this.liveWavesCute = liveWavesCute;
        this.humor = humor;
        this.free = free;
        this.clever = clever;
        this.serious = serious;
        this.simple = simple;
        this.game = game;
        this.music = music;
        this.sport = sport;
        this.postId = postId;
    }
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSteady() {
        return this.steady;
    }

    public void setSteady(String steady) {
        this.steady = steady;
    }

    public String getRomantic() {
        return this.romantic;
    }

    public void setRomantic(String romantic) {
        this.romantic = romantic;
    }

    public String getLiveWavesCute() {
        return this.liveWavesCute;
    }

    public void setLiveWavesCute(String liveWavesCute) {
        this.liveWavesCute = liveWavesCute;
    }

    public String getHumor() {
        return this.humor;
    }

    public void setHumor(String humor) {
        this.humor = humor;
    }

    public String getFree() {
        return this.free;
    }

    public void setFree(String free) {
        this.free = free;
    }

    public String getClever() {
        return this.clever;
    }

    public void setClever(String clever) {
        this.clever = clever;
    }

    public String getSerious() {
        return this.serious;
    }

    public void setSerious(String serious) {
        this.serious = serious;
    }

    public String getSimple() {
        return this.simple;
    }

    public void setSimple(String simple) {
        this.simple = simple;
    }

    public String getGame() {
        return this.game;
    }

    public void setGame(String game) {
        this.game = game;
    }

    public String getMusic() {
        return this.music;
    }

    public void setMusic(String music) {
        this.music = music;
    }

    public String getSport() {
        return this.sport;
    }

    public void setSport(String sport) {
        this.sport = sport;
    }

    public String getPostId() {
        return this.postId;
    }

    public void setPostId(String postId) {
        this.postId = postId;
    }

    @Override
    public String toString() {
        return "PersonalityTraits{" +
                "id=" + id +
                ", steady='" + steady + '\'' +
                ", romantic='" + romantic + '\'' +
                ", liveWavesCute='" + liveWavesCute + '\'' +
                ", humor='" + humor + '\'' +
                ", free='" + free + '\'' +
                ", clever='" + clever + '\'' +
                ", serious='" + serious + '\'' +
                ", simple='" + simple + '\'' +
                ", game='" + game + '\'' +
                ", music='" + music + '\'' +
                ", sport='" + sport + '\'' +
                ", postId='" + postId + '\'' +
                '}';
    }
}
