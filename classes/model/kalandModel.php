<?php
//elmenti egy tömbbe az adatbázisból a pizzák adatait

class kalandModel{
    //összes pizza adat
    public static function getKaland(){
        //adatbázis kapcsolat
        $con = Dbc::connect();
        //végeredmény tömb
        $kalandArr = array();

        //prepared statement
        $query=$con->prepare(
            "SELECT * FROM kaland;"
        );
        //lekérdezés lefuttatása
        $query->execute();

        //eredmények elmentése a tömbbe
        while($row=$query->fetch()){
            $kalandArr[] = $row;
        }

        //tömb visszaadása
        return $kalandArr;
    }

}
