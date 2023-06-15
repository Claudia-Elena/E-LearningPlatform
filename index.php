<?php 
require_once("include/initialize.php");  
if (!isset($_SESSION['StudentID'])) {
  # code...
  redirect('login.php');
}
$content='home.php';
$view = (isset($_GET['q']) && $_GET['q'] != '') ? $_GET['q'] : '';
switch ($view) { 
  case 'lesson':
    $title = "Lectii";
    $content = 'lesson.php';
   # code...
   break; 
  case 'exercises':
    $title = "Exercitii";
    $content = 'exercises.php';
   # code...
   break; 
  case 'download':
    $title = "Download";
    $content = 'download.php';
   # code...
   break; 
  case 'about':
    $title = "Despre mine";
    $content = 'about.php';
   # code...
   break; 
  case 'playvideo':
    $title = "Arata Video";
    $content = 'playvideo.php';
   # code...
   break; 
  case 'viewpdf':
    $title = "Arata pdf";
    $content = 'viewpdf.php';
   # code...
   break; 
  case 'question':
    $title = "Intrebari";
    $content = 'question.php';
   # code...
   break; 
  case 'quizresult':
    $title = "Resultat";
    $content = 'quizresult.php';
   # code...
   break; 
  default :
    $title = "Home";
    $content    = 'home.php';
}
require_once("navigation/navigations.php");
?>