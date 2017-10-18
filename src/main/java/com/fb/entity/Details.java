package com.fb.entity;
public class Details {
    private Integer id;
    private String conceptOfLove;
    private String spouseIntention;
    private String hobby;
    private String wage;
    private String photo;
    private String personalityTraits;
    public Details() {
        super();
    }
    public Details(Integer id,String conceptOfLove,String spouseIntention,String hobby,String wage,String photo,String personalityTraits) {
        super();
        this.id = id;
        this.conceptOfLove = conceptOfLove;
        this.spouseIntention = spouseIntention;
        this.hobby = hobby;
        this.wage = wage;
        this.photo = photo;
        this.personalityTraits = personalityTraits;
    }
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getConceptOfLove() {
        return this.conceptOfLove;
    }

    public void setConceptOfLove(String conceptOfLove) {
        this.conceptOfLove = conceptOfLove;
    }

    public String getSpouseIntention() {
        return this.spouseIntention;
    }

    public void setSpouseIntention(String spouseIntention) {
        this.spouseIntention = spouseIntention;
    }

    public String getHobby() {
        return this.hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }

    public String getWage() {
        return this.wage;
    }

    public void setWage(String wage) {
        this.wage = wage;
    }

    public String getPhoto() {
        return this.photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getPersonalityTraits() {
        return this.personalityTraits;
    }

    public void setPersonalityTraits(String personalityTraits) {
        this.personalityTraits = personalityTraits;
    }

}
