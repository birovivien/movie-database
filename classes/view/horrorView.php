<?php

include_once 'classes/dbc.php';
include_once 'classes/model/horrorModel.php';

class horrorView{

    public static function showHorror(){
        $horrorArr=horrorModel::getHorror();
        foreach($horrorArr as $horror){
            echo "
              <div class='card'>
                <img class='card-img-top'$horror[img]
              </div>
            ";
        }
    }

}
