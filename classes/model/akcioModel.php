<?php

class akcioModel{
    public static function getAkcio(){

        $sql = 'SELECT * FROM akcio';

        $result = mysqli_query($conn, $sql);

        $movies = mysqli_fetch_all($result, MYSQLI_ASSOC);

        mysqli_free_result($result);
        mysqli_close($conn);

        return $result;
    }

}
