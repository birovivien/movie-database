<?php

class akcioModel{
    public static function getAkcio(){
        $con = Dbc::connect();
        $akcioArr = array();

        $query=$con->prepare(
            "SELECT * FROM akcio;"
        );
        $query->execute();

        while($row=$query->fetch()){
            $akcioArr[] = $row;
        }

        return $akcioArr;
    }

}
