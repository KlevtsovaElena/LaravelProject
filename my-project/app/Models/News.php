<?php

namespace App\Models;

use Illuminate\Support\Facades\DB;

class News
{

  //получить все новости из таблицы news
  public static function getDataDB()
  {
    $news = DB::select('select * from news');

    $jsonData = json_encode($news, JSON_UNESCAPED_UNICODE);

    echo $jsonData;
  }


  //получить запись или записи по условию (id или category)
  public static function getDataCondition()
  {

    $filterStr = '';

    foreach ($_GET as $key => $value) {
            $filterStr .= ' AND ' . $key . ' IN (' . $value . ')';  
    }

    $news = DB::select('select * from `news` where 1 ' . $filterStr);

    $jsonData = json_encode($news, JSON_UNESCAPED_UNICODE);

    echo $jsonData;

  }


  //пересчитать значение лайков или просмотров
  public static function quantityUpdate() : bool
  {

    if (isset($_POST['like'])) {
      $sqlText = "UPDATE `news` SET `like` = `like` + 1 WHERE id = " . (int)$_POST['like'];

    } else if (isset($_POST['dislike'])) {
      $sqlText = "UPDATE `news` SET `like` = `like` - 1 WHERE id = " . (int)$_POST['dislike'];

    } else if (isset($_POST['view'])) {
      $sqlText = "UPDATE `news` SET `view` = `view` + 1 WHERE id = " . (int)$_POST['view'];
    }

    DB::update($sqlText);

    return true;

  }

}




  // public static function getData()
  // {

  //   $news = [];
  //   $pdo = Connection::getConnection();
  //   $result = $pdo->query('select * from news');
  //   //$news = DB::select('select * from news');
  //   while ($row = $result-> fetch()) {
  //     $news[] = $row;
  //   }
  //   $jsonData = json_encode($news, JSON_UNESCAPED_UNICODE);
  //   //var_dump($news);
  //   echo $jsonData;

  // }
    // public static function getEnvTest()
  // {

  //  // var_dump($_ENV);
  // var_dump(getenv('DB_HOST'));
  // var_dump(getenv('DB_PORT'));
  // var_dump(getenv('DB_USERNAME'));
  // var_dump(getenv('DB_PASSWORD'));
  // var_dump(getenv('DB_DATABASE'));
  // }