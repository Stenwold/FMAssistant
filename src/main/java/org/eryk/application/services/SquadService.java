package org.eryk.application.services;

import org.eryk.application.entity.Footballer;
import org.eryk.application.entity.Position;
import org.eryk.application.serviceInterfaces.SquadServiceInterface;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class SquadService implements SquadServiceInterface {

    @Override
    @Transactional
    public Footballer[] prepareMainSquadTable(List<Footballer> previousTable) {

        //empty array for prepared squad
            /*Note about size:
            If whole squad fits perfectly (each player is assigned to slot [0-24] then array needs size = 25.
            Slots [25 - 44] are dedicated for footballers, which didn't find proper slot.

            They will be post processed by changing their team status back to U23/Reserves (Default) outside this method
            Because there are minimum 2 slots for dedicated position and 3 for any position on reserves,
            5 footballers will always match to slots. Another 20 is maximum size of unfit players,
            so 25 (best case) + 20 = 45 (worst case)
             */
            Footballer[] sorted = new Footballer[45];

            int numberOfUnfitSlots = 0;

        //for every position there is some free slots at the beginning
        //information about starting and recent values of freeSlots is needed
            HashMap<Position,Integer> startingFreeSlots = new HashMap<>();
            startingFreeSlots.put(Position.GK,2);
            startingFreeSlots.put(Position.CB,4);
            startingFreeSlots.put(Position.RB,2);
            startingFreeSlots.put(Position.LB,2);
            startingFreeSlots.put(Position.CM,4);
            startingFreeSlots.put(Position.CAM,2);
            startingFreeSlots.put(Position.RW,2);
            startingFreeSlots.put(Position.LW,2);
            startingFreeSlots.put(Position.ST,2);
            //Reserve is not a position so it has its own slot counter
            int startingReserveSlots = 3;

            HashMap<Position,Integer> recentFreeSlots = new HashMap<>();
            recentFreeSlots.put(Position.GK,2);
            recentFreeSlots.put(Position.CB,4);
            recentFreeSlots.put(Position.RB,2);
            recentFreeSlots.put(Position.LB,2);
            recentFreeSlots.put(Position.CM,4);
            recentFreeSlots.put(Position.CAM,2);
            recentFreeSlots.put(Position.RW,2);
            recentFreeSlots.put(Position.LW,2);
            recentFreeSlots.put(Position.ST,2);
            //Reserve is not a position so it has its own slot counter
            int recentReserveSlots = 3;


        //every position has some fixed starting index in table
            HashMap<Position,Integer> indexes = new HashMap<>();
            indexes.put(Position.GK,0);
            indexes.put(Position.CB,2);
            indexes.put(Position.RB,6);
            indexes.put(Position.LB,8);
            indexes.put(Position.CM,10);
            indexes.put(Position.CAM,14);
            indexes.put(Position.RW,16);
            indexes.put(Position.LW,18);
            indexes.put(Position.ST,20);
        //Reserve is not a position so it has its own index counter
            int reserveIndex =22;

                    //This approach presented above let more flexibility in the future, because simple changes of
        //number of slots and starting indexes easily reformat squad structure from 2x(1-4-2-3-1)+3 to more fitting
        //another formation. Appointing algorithm is independent of it.

        for(int i = previousTable.size()-1;i>=0;i--){
            Footballer footballer=previousTable.get(i);
            Position position = footballer.getPosition();
            if(recentFreeSlots.get(position)>0){
                /*if there is free slot for iterated footballer
                  assign him to starting_index+starting_free_slot-recent_free_slots
                                Examples:
                         New goalkeeper          0 + 2 - 2 = 0
                         Second goalkeeper       0 + 2 - 1 = 1
                         Third goalkeeper        algorithm won't assign goalkeeper to index 0 + 2 - 0 = 2

                         New midfielder          10 + 4 - 4 = 10
                         Second midfielder       10 + 4 - 3 = 11
                         Third midfielder        10 + 4 - 2 = 12
                         Fourth midfielder       10 + 4 - 1 = 13
                 */
                sorted[indexes.get(position)
                      +startingFreeSlots.get(position)
                      -recentFreeSlots.get(position)] = footballer;
                //Slot was taken so there is one less now
                recentFreeSlots.replace(position,recentFreeSlots.get(position)-1);
            }  //if there was no dedicated free slot check reserve slots
            else{
                if(recentReserveSlots>0){
                     //If there is free reserve slot, assign footballer as previous
                    sorted[reserveIndex
                          +startingReserveSlots
                          -recentReserveSlots] = footballer;

                    recentReserveSlots--;
                }
                else {
                    //if there is no free slot neither in dedicated position nor reserves,
                    //player is added to unfit slot [25-44]
                    sorted[25 + numberOfUnfitSlots] = footballer;
                    numberOfUnfitSlots++;
                }
            }
        }
        return sorted;
    }

    @Override
    public List<Footballer> filterCandidatesForMainSquad(List<Footballer> candidates) {

        List<Footballer>  temp= new ArrayList<>(candidates);
        temp.removeIf(footballer -> (!footballer.getTeamStatus().equals("First Team")));

        return temp;
    }
}
