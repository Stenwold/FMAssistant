package org.eryk.application.repository;

import org.eryk.application.entity.FootballerAttributes;

import java.util.List;

public interface FootballerAttributesRepository {

    public List<FootballerAttributes> getFootballersAttributes();

    public FootballerAttributes getFootballerAttributes();

    public void saveFootballerAttributes();

    public void deleteFootballerAttributes();
}
