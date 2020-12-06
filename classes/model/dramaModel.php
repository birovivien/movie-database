<?php

class dramaModel{
    public static function getDrama(){
        $con = Dbc::connect();
        $dramaArr = array();

        $query=$con->prepare(
            "SELECT * FROM drama;"
        );
        $query->execute();

        while($row=$query->fetch()){
            $dramaArr[] = $row;
        }
        return $dramaArr;
    }

}
