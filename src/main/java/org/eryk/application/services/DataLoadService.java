package org.eryk.application.services;

import org.eryk.application.serviceInterfaces.DataLoadServiceInterface;
import org.eryk.application.serviceInterfaces.FootballerCreatorServiceInterface;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.util.ArrayList;

@Service
public class DataLoadService implements DataLoadServiceInterface {

    @Autowired
    private FootballerCreatorServiceInterface footballerCreatorService;

    private ArrayList<String> header = new ArrayList<>();
    private String htmlName = null, loadType = null, fileType = null;


    @Override

    public void loadData(String htmlName, String loadType){
        this.loadType = loadType;
        convert(loadFile(htmlName));
    }

    //method load data from html file and returns content as String

    private String loadFile(String htmlName) {

        StringBuilder contentBuilder = new StringBuilder();

        try {
            BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(
                    "C:\\Users\\Focus\\IdeaProjects\\FMAssistant\\src\\main\\resources\\"+htmlName+".html"),
                    "UTF-8"));
            this.htmlName = htmlName+".html";
            String str;
            while ((str = in.readLine()) != null) {
                contentBuilder.append(str);
            }
            in.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return contentBuilder.toString();
    }

    //method checks if order of column is right, and then create list of Footballers

    private void convert(String content) {

        Document document = Jsoup.parse(content);

        Elements columnTitles = document.getElementsByTag("th").select("th");

        if(!header.isEmpty())header.clear();
        //Populate Header with column titles in parsed file
        for (org.jsoup.nodes.Element columnTitle : columnTitles) {
            header.add(columnTitle.text());
        }

        defineFileType();

        Elements rows = document.getElementsByTag("tr");
        for (int r = 1; r < rows.size(); r++) {
            Elements cells = rows.get(r).getElementsByTag("td");
            footballerCreatorService.createFootballer(cells,fileType,loadType);
        }

    }

    private void defineFileType(){

        String[] ownPlayersTemplate = new String[]{
                "UID","1v1","Acc","Aer","Agg","Ant",
                "Agi","Bal","Bra","Com","Cmd","Cmp",
                "Cnt","Cro","Dec","Det","Dri","Fin",
                "Fir","Fla","Han","Hea","Jum","Kic",
                "Lon","Mar","Nat","OtB","Pac","Pas",
                "Pos","Ref","Sta","Str","Tck","Tea",
                "Tec","Thr","Vis","Wor","Name","Age",
                "Nat","EU National","Club","Personality","Value","Wage",
                "Expires","Best Pos","Best Role","Preferred Foot","Home-Grown Status",

                "Due Date","On Loan From","Apps","Gls","Ast"
        };

        String[] otherPlayersTemplate = new String[]{
                "UID","1v1","Acc","Aer","Agg","Ant",
                "Agi","Bal","Bra","Com","Cmd","Cmp",
                "Cnt","Cro","Dec","Det","Dri","Fin",
                "Fir","Fla","Han","Hea","Jum","Kic",
                "Lon","Mar","Nat","OtB","Pac","Pas",
                "Pos","Ref","Sta","Str","Tck","Tea",
                "Tec","Thr","Vis","Wor","Name","Age",
                "Nat","EU National","Club","Personality","Value","Wage",
                "Expires","Best Pos","Best Role","Preferred Foot","Home-Grown Status",

                "Inf"
        };


        if(this.checkOrder(ownPlayersTemplate)){
            fileType = "ownPlayers";
        } else if(this.checkOrder(otherPlayersTemplate)){
            fileType = "otherPlayers";
        }else {
            throw new IllegalStateException("Source file: " + htmlName + " has wrong column order");
        }
    }


    private boolean checkOrder(String[] template){

        if(template.length!=header.size()) return false;

        for(int i = 0; i < header.size(); i++){
            if(!header.get(i).equals(template[i])){
                return false;
            }
        }
        return true;
    }
}
