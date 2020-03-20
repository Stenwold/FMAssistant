package org.eryk.application.entity;

import javax.persistence.*;

@Entity
@Table(name="footballer")
public class Footballer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;
    private int age;
    private String country;
    private String position;

    private String club;
    private int value;
    private int wage;
    private int contract;

    @Column(name="hg_status")
    private String hgStatus;

    @Column(name="years_to_hg")
    private String yearsToHG;

    private boolean shortList;

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

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
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

    @Override
    public String toString() {
        return "Footballer{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", position='" + position + '\'' +
                ", club='" + club + '\'' +
                '}';
    }
}
