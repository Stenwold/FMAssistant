package org.eryk.application.repository;

import org.eryk.application.entity.FootballerStats;

import java.util.List;

public interface FootballerStatsRepository {

    public List<FootballerStats> getFootballersStats();

    public FootballerStats getFootballerStats();

    public void saveFootballerStats();

    public void deleteFootballerStats();
}
