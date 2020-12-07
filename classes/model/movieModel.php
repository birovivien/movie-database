<?php

class movieModel{
    public static function getMovie(){
        $con = Dbc::connect();
        $movieArr = array();

        $query=$con->prepare(
            "SELECT * FROM movies;"
        );
        $query->execute();

        while($row=$query->fetch()){
            $movieSelected[] = $row;
        }

        return $movieSelected;
    }

}
