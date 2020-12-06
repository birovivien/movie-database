<?php


include_once 'classes/dbc.php';
include_once 'classes/model/animacioModel.php';

class animacioView{

    public static function showAnimacio(){
        $animacioArr=animacioModel::getAnimacio();
        foreach($animacioArr as $animacio){
            echo "
              <div class='card'>
                <img class='card-img-top'$animacio[img]
              </div>
            ";
        }
    }

}
