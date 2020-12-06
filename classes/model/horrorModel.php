<?php
//elmenti egy tömbbe az adatbázisból a pizzák adatait

class horrorModel{
    //összes pizza adat
    public static function getHorror(){
        //adatbázis kapcsolat
        $con = Dbc::connect();
        //végeredmény tömb
        $horrorArr = array();

        //prepared statement
        $query=$con->prepare(
            "SELECT * FROM horror;"
        );
        //lekérdezés lefuttatása
        $query->execute();

        //eredmények elmentése a tömbbe
        while($row=$query->fetch()){
            $horrorArr[] = $row;
        }

        //tömb visszaadása
        return $horrorArr;
    }

}
