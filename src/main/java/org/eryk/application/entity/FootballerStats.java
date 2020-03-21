package org.eryk.application.entity;

import javax.persistence.*;

@Entity
@Table(name = "footballer_stats")
public class FootballerStats {

    @Id
    private int id;

    @Column(name = "first_team_apps")
    private int firstTeamApps;

    @Column(name = "sub_apps")
    private int subApps;
    private int goals;
    private int assists;

    @Column(name = "ft_apps_total")
    private int firstTeamAppsTotal;

    @Column(name = "sub_apps_total")
    private int subAsTotal;

    @Column(name = "goals_total")
    private int goalsTotal;

    @Column(name = "assists_total")
    private int assistsTotal;

    @OneToOne
    @JoinColumn(name = "id")
    @MapsId
    private Footballer footballer;

    public FootballerStats() {
    }

    public int getFirstTeamApps() {
        return firstTeamApps;
    }

    public void setFirstTeamApps(int firstTeamApps) {
        this.firstTeamApps = firstTeamApps;
    }

    public int getSubApps() {
        return subApps;
    }

    public void setSubApps(int subApps) {
        this.subApps = subApps;
    }

    public int getGoals() {
        return goals;
    }

    public void setGoals(int goals) {
        this.goals = goals;
    }

    public int getAssists() {
        return assists;
    }

    public void setAssists(int assists) {
        this.assists = assists;
    }

    public int getFirstTeamAppsTotal() {
        return firstTeamAppsTotal;
    }

    public void setFirstTeamAppsTotal(int firstTeamAppsTotal) {
        this.firstTeamAppsTotal = firstTeamAppsTotal;
    }

    public int getSubAsTotal() {
        return subAsTotal;
    }

    public void setSubAsTotal(int subAsTotal) {
        this.subAsTotal = subAsTotal;
    }

    public int getGoalsTotal() {
        return goalsTotal;
    }

    public void setGoalsTotal(int goalsTotal) {
        this.goalsTotal = goalsTotal;
    }

    public int getAssistsTotal() {
        return assistsTotal;
    }

    public void setAssistsTotal(int assistsTotal) {
        this.assistsTotal = assistsTotal;
    }

    public Footballer getFootballer() {
        return footballer;
    }

    public void setFootballer(Footballer footballer) {
        this.footballer = footballer;
    }
}
