<?php

include_once 'classes/dbc.php';
include_once 'classes/model/movieModel.php';

class movieView{

    public static function showMovie(){
        $movieSelected[]=movieModel::getMovie();
        foreach($movieSelected as $movie){
            echo "
            <div class='content valami'>
              <img $movie[img]>
              <h3>$movie[name]</h3>
              <p>$movie[description]</p>
            </div>
            ";
        }
    }

}


// echo "
//   <div class='card'>
//     <img class='card-img-top'$akcio[img]
//   </div>
// ";
// }




// <img class='order-image'$pizza[img]'>
//             </div>
//             <div class='card-body'>
//                 <h2 class='pizza-name'>$pizza[name]</h2>
//                 <p class='toppings'>$pizza[description]</p>
//                 <h1 class='card-title pricing-card-title'>$pizza[price] ft</h1>
