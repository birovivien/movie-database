<?php

class animacioModel{
    public static function getAnimacio(){
        $con = Dbc::connect();
        $animacioArr = array();

        $query=$con->prepare(
            "SELECT * FROM animacio;"
        );
        $query->execute();

        while($row=$query->fetch()){
            $animacioArr[] = $row;
        }

        return $animacioArr;
    }

}
