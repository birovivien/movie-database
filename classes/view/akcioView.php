<?php

include_once 'classes/dbc.php';
include_once 'classes/model/akcioModel.php';

class akcioView{

    public static function showAkcio(){
        $akcioArr=akcioModel::getAkcio();
        foreach($akcioArr as $akcio){
            echo "
              <div class='card'>
                <img class='card-img-top'$akcio[img]
              </div>
            ";
        }
    }

}
