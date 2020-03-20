package org.eryk.application.entity;

import javax.persistence.*;

@Entity
@Table(name = "footballer_attributes")
public class FootballerAttributes {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private Double defending;
    private Double passing;
    private Double crossing;
    private Double technique;
    private Double shooting;
    private Double endeavour;
    private Double focus;
    private Double creativity;
    private Double movement;
    private Double physical;
    private Double aerial;
    private Double mobility;
    private Double fitness;


    private Double GK_R;
    private Double CB_R;
    private Double BPD_R;
    private Double FB_R;
    private Double CDM_R;
    private Double B2B_R;
    private Double DLP_R;
    private Double W_R;
    private Double AM_R;
    private Double FS_R;
    private Double SS_R;

    public FootballerAttributes() {
    }

    public Double getDefending() {
        return defending;
    }

    public void setDefending(Double defending) {
        this.defending = defending;
    }

    public Double getPassing() {
        return passing;
    }

    public void setPassing(Double passing) {
        this.passing = passing;
    }

    public Double getCrossing() {
        return crossing;
    }

    public void setCrossing(Double crossing) {
        this.crossing = crossing;
    }

    public Double getTechnique() {
        return technique;
    }

    public void setTechnique(Double technique) {
        this.technique = technique;
    }

    public Double getShooting() {
        return shooting;
    }

    public void setShooting(Double shooting) {
        this.shooting = shooting;
    }

    public Double getEndeavour() {
        return endeavour;
    }

    public void setEndeavour(Double endeavour) {
        this.endeavour = endeavour;
    }

    public Double getFocus() {
        return focus;
    }

    public void setFocus(Double focus) {
        this.focus = focus;
    }

    public Double getCreativity() {
        return creativity;
    }

    public void setCreativity(Double creativity) {
        this.creativity = creativity;
    }

    public Double getMovement() {
        return movement;
    }

    public void setMovement(Double movement) {
        this.movement = movement;
    }

    public Double getPhysical() {
        return physical;
    }

    public void setPhysical(Double physical) {
        this.physical = physical;
    }

    public Double getAerial() {
        return aerial;
    }

    public void setAerial(Double aerial) {
        this.aerial = aerial;
    }

    public Double getMobility() {
        return mobility;
    }

    public void setMobility(Double mobility) {
        this.mobility = mobility;
    }

    public Double getFitness() {
        return fitness;
    }

    public void setFitness(Double fitness) {
        this.fitness = fitness;
    }

    public Double getGK_R() {
        return GK_R;
    }

    public void setGK_R(Double GK_R) {
        this.GK_R = GK_R;
    }

    public Double getCB_R() {
        return CB_R;
    }

    public void setCB_R(Double CB_R) {
        this.CB_R = CB_R;
    }

    public Double getBPD_R() {
        return BPD_R;
    }

    public void setBPD_R(Double BPD_R) {
        this.BPD_R = BPD_R;
    }

    public Double getFB_R() {
        return FB_R;
    }

    public void setFB_R(Double FB_R) {
        this.FB_R = FB_R;
    }

    public Double getCDM_R() {
        return CDM_R;
    }

    public void setCDM_R(Double CDM_R) {
        this.CDM_R = CDM_R;
    }

    public Double getB2B_R() {
        return B2B_R;
    }

    public void setB2B_R(Double b2B_R) {
        B2B_R = b2B_R;
    }

    public Double getDLP_R() {
        return DLP_R;
    }

    public void setDLP_R(Double DLP_R) {
        this.DLP_R = DLP_R;
    }

    public Double getW_R() {
        return W_R;
    }

    public void setW_R(Double w_R) {
        W_R = w_R;
    }

    public Double getAM_R() {
        return AM_R;
    }

    public void setAM_R(Double AM_R) {
        this.AM_R = AM_R;
    }

    public Double getFS_R() {
        return FS_R;
    }

    public void setFS_R(Double FS_R) {
        this.FS_R = FS_R;
    }

    public Double getSS_R() {
        return SS_R;
    }

    public void setSS_R(Double SS_R) {
        this.SS_R = SS_R;
    }
}
