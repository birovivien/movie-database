<?php

include_once 'classes/dbc.php';
include_once 'classes/model/dramaModel.php';

class dramaView{

    public static function showDrama(){
        $dramaArr=dramaModel::getDrama();
        foreach($dramaArr as $drama){
            echo "
              <div class='card'>
                <img class='card-img-top'$drama[img]
              </div>
            ";
        }
    }

}
