<?php

class Dbc{
    public static function connect(){
        $host = "localhost";
        $user = "root";
        $password = "";
        $dbname ="movie_database";

        try{
            $con = new PDO("mysql:host=".$host.";dbname=".$dbname, $user,$password);
            $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
            $con->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        }catch(PDOException $e){
            echo "Connection failed " . $e->getMessage();
        }
        return $con;
    }
}
