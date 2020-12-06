<?php

include_once 'classes/dbc.php';
include_once 'classes/model/kalandModel.php';

class kalandView{

    public static function showKaland(){
        $kalandArr=kalandModel::getKaland();
        foreach($kalandArr as $kaland){
            echo "
              <div class='card'>
                <img class='card-img-top'$kaland[img]
              </div>
            ";
        }
    }

}
