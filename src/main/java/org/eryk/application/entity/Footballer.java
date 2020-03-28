package org.eryk.application.entity;

import org.hibernate.annotations.Cascade;

import javax.persistence.*;

@Entity
@Table(name="footballer")
public class Footballer implements Comparable<Footballer>{

    @Id
    private int id;

    private String name;
    private int age;
    private String country;

    @Enumerated(EnumType.STRING)
    private Position position;

    private String club;
    private int value;
    private int wage;
    private int contract;

    @Column(name="pos_rating")
    private double positionRating;

    @Column(name="hg_status")
    private String hgStatus;

    @Column(name="years_to_hg")
    private String yearsToHG;

    @Column(name="team_status")
    private String teamStatus;


    private boolean shortList;

    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    @OneToOne(fetch = FetchType.LAZY,
            cascade = {CascadeType.DETACH,
                    CascadeType.MERGE,
                    CascadeType.REFRESH,
                    CascadeType.PERSIST,
            },
            mappedBy = "footballer")
    private FootballerAttributes attributes;

    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    @OneToOne(fetch = FetchType.LAZY,
            cascade = {CascadeType.DETACH,
                    CascadeType.MERGE,
                    CascadeType.REFRESH,
                    CascadeType.PERSIST,

            },
            mappedBy = "footballer")
    private FootballerStats stats;

    public Footballer() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Position getPosition() {
        return position;
    }

    public void setPosition(Position position) {
        this.position = position;
    }

    public double getPositionRating() {
        return positionRating;
    }

    public void setPositionRating(double positionRating) {
        this.positionRating = positionRating;
    }

    public String getClub() {
        return club;
    }

    public void setClub(String club) {
        this.club = club;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public int getWage() {
        return wage;
    }

    public void setWage(int wage) {
        this.wage = wage;
    }

    public int getContract() {
        return contract;
    }

    public void setContract(int contract) {
        this.contract = contract;
    }

    public String getHgStatus() {
        return hgStatus;
    }

    public void setHgStatus(String hgStatus) {
        this.hgStatus = hgStatus;
    }

    public String getYearsToHG() {
        return yearsToHG;
    }

    public void setYearsToHG(String yearsToHG) {
        this.yearsToHG = yearsToHG;
    }

    public boolean isShortList() {
        return shortList;
    }

    public void setShortList(boolean shortList) {
        this.shortList = shortList;
    }

    public FootballerAttributes getAttributes() {
        return attributes;
    }

    public void setAttributes(FootballerAttributes attributes) {
        this.attributes = attributes;
    }

    public FootballerStats getStats() {
        return stats;
    }

    public void setStats(FootballerStats stats) {
        this.stats = stats;
    }

    public String getTeamStatus() {
        return teamStatus;
    }

    public void setTeamStatus(String teamStatus) {
        this.teamStatus = teamStatus;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Footballer{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", position='" + position + '\'' +
                ", club='" + club + '\'' +
                '}';
    }

    @Override
    public int compareTo(Footballer footballer) {


        //ordering by rating first
        if(footballer.getPositionRating()<this.getPositionRating())
            return 1;
        else if(footballer.getPositionRating()>this.getPositionRating())
            return -1;
        else
            //if positions are the same, positionRate is next factor
        {
            if (footballer.getPosition().ordinal() < this.getPosition().ordinal())
                return 1;
            else if (footballer.getPosition().ordinal() > this.getPosition().ordinal())
                return -1;
            else return 1;
        }
    }
}
