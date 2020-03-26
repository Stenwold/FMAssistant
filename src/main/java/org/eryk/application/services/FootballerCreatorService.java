package org.eryk.application.services;

import org.eryk.application.dao.FootballerDAO;
import org.eryk.application.entity.Footballer;
import org.eryk.application.entity.FootballerAttributes;
import org.eryk.application.entity.Position;
import org.eryk.application.serviceInterfaces.FootballerCreatorServiceInterface;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class FootballerCreatorService implements FootballerCreatorServiceInterface {

    @Autowired
    private FootballerDAO footballerDAO;

    @Override
    @Transactional
    public void createFootballer(Elements cells, String type) {

        {
            if (type.equals("ownPlayers")) {

                Footballer inserted = new Footballer();
                FootballerAttributes insertedAttr = new FootballerAttributes();

                inserted.setName(cells.get(0).text());
                inserted.setClub("Arsenal");
                inserted.setPosition(findBestPos(cells.get(2).text()));
                inserted.setTeamStatus("U23/Reserves");

                insertedAttr.setDefending(
                        (Integer.parseInt(cells.get(16).text())
                                + Integer.parseInt(cells.get(18).text())
                                + Integer.parseInt(cells.get(12).text())
                                + Integer.parseInt(cells.get(6).text())) * 1.25);

                insertedAttr.setPassing(
                        (Double.parseDouble(cells.get(17).text()) * 3
                                + Integer.parseInt(cells.get(15).text()) * 2));

                insertedAttr.setCrossing(
                        (Integer.parseInt(cells.get(17).text()) * 1.5
                                + Integer.parseInt(cells.get(15).text()) * 1.5
                                + Integer.parseInt(cells.get(25).text()) * 2));

                insertedAttr.setTechnique(
                        (Integer.parseInt(cells.get(24).text()) * 1.5
                                + Integer.parseInt(cells.get(15).text()) * 2
                                + Integer.parseInt(cells.get(22).text()) * 1.5));

                insertedAttr.setShooting(
                        (Integer.parseInt(cells.get(23).text()) * 2.5
                                + Integer.parseInt(cells.get(15).text()) * 0.5
                                + Integer.parseInt(cells.get(22).text())
                                + Integer.parseInt(cells.get(19).text())));

                insertedAttr.setEndeavour(
                        (Integer.parseInt(cells.get(14).text())
                                + Integer.parseInt(cells.get(13).text())
                                + Integer.parseInt(cells.get(10).text())
                                + Integer.parseInt(cells.get(4).text()) * 1.25));

                insertedAttr.setFocus(
                        (Integer.parseInt(cells.get(11).text()) * 2.5
                                + Integer.parseInt(cells.get(8).text()) * 2.5));

                insertedAttr.setCreativity(
                        (Integer.parseInt(cells.get(12).text())
                                + Double.parseDouble(cells.get(9).text())
                                + Integer.parseInt(cells.get(3).text())
                                + Integer.parseInt(cells.get(1).text())
                                + Integer.parseInt(cells.get(5).text())));

                insertedAttr.setMovement(
                        (Integer.parseInt(cells.get(12).text())
                                + Integer.parseInt(cells.get(9).text())
                                + Integer.parseInt(cells.get(7).text())
                                + Integer.parseInt(cells.get(1).text()) * 1.25));

                insertedAttr.setPhysical(
                        (Integer.parseInt(cells.get(29).text()) * 2
                                + Integer.parseInt(cells.get(34).text()) * 3.0));

                insertedAttr.setAerial(
                        (Integer.parseInt(cells.get(30).text()) * 3.0
                                + Integer.parseInt(cells.get(20).text()) * 2));

                insertedAttr.setMobility(
                        (Integer.parseInt(cells.get(27).text()) * 2.0
                                + Integer.parseInt(cells.get(28).text())
                                + Integer.parseInt(cells.get(32).text()) * 2));

                insertedAttr.setFitness(
                        (Integer.parseInt(cells.get(33).text()) * 3.0
                                + Integer.parseInt(cells.get(31).text()) * 2));

                inserted.setAttributes(insertedAttr);
                insertedAttr.setFootballer(inserted);
                footballerDAO.saveFootballer(inserted);

            }
        }

    }

    private Position findBestPos(String BestPos){
        Position position;

        switch(BestPos){
            case "GK": position = Position.GK;
                break;
            case "D (C)": position = Position.CB;
                break;
            case "D (L)": position = Position.LB;
                break;
            case "D (R)": position = Position.RB;
                break;
            case "WB (R)": position = Position.LB;
                break;
            case "WB (L)": position = Position.RB;
                break;
            case "DM": position = Position.CM;
                break;
            case "M (C)": position = Position.CM;
                break;
            case "AM (C)": position = Position.CAM;
                break;
            case "AM (L)": position = Position.LW;
                break;
            case "AM (R)": position = Position.RW;
                break;
            case "ST (C)": position = Position.ST;
                break;
            default:
                position = null;
                break;
        }


        return position;
    }

}
