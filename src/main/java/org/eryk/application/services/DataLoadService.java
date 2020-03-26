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

    private String[] ownPlayersTemplate = new String[]{
            "Name","Tea","Best Pos","Fla","Wor","Vis","Pos","OtB","Cnt","Dec","Det","Cmp","Ant","Bra","Agg",
            "Tec","Tck","Pas","Mar","Lon","Hea","Fre","Fir","Fin","Dri","Cro","Cor","Acc","Agi","Bal","Jum",
            "Nat","Pac","Sta","Str"
    };
    private ArrayList<String> header = new ArrayList<>();
    private String htmlName = null;
    private String fileType;

    @Override

    public void loadData(String htmlName, String fileType){
        if(fileType.equals("ownPlayers")) {
            this.fileType = fileType;
            this.convert(this.loadFile(htmlName), ownPlayersTemplate);
        }
    }

    //method load data from html file and returns content as String

    private String loadFile(String htmlName) {
        StringBuilder contentBuilder = new StringBuilder();
        try {

           // BufferedReader in = new BufferedReader(new FileReader("C:\\Users\\Focus\\IdeaProjects\\FMAssistant\\src\\main\\resources\\TestingFile.html"));
            BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(
                    "C:\\Users\\Focus\\IdeaProjects\\FMAssistant\\src\\main\\resources\\TestingFile.html"),
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

    private void convert(String content, String[] template) {

        Document document = Jsoup.parse(content);

        Elements columnTitles = document.getElementsByTag("th").select("th");

        if(!header.isEmpty())header.clear();
        //Populate Header with column titles in parsed file
        for (org.jsoup.nodes.Element columnTitle : columnTitles) {
            header.add(columnTitle.text());
        }
        if(this.checkOrder(template)){

            //Extract each row (player) from document
            Elements rows = document.getElementsByTag("tr");

            for (int r = 1; r < rows.size(); r++) {
                Elements cells = rows.get(r).getElementsByTag("td");
                footballerCreatorService.createFootballer(cells,fileType);
            }
        } else {
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
