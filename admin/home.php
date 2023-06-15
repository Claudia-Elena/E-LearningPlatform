<style type="text/css">
 
  .secondrow > .row {
     border: 1px solid #ddd;
    /*padding: 5px 30px;*/
    text-align: center; 
    margin: 20px;
    min-height: 50px;
     border-radius: 50%;
  }
  .imgstretch{ 
    padding: 10px 30px;
  }
  .imgstretch img {
    width: 100%;
    height: 100px;
    object-fit: contain;
  }

 
</style>

<div class="container">
  <h3>Administrator Panel:Bine ai venit,  <?php echo $_SESSION['NAME'];?></h3>
 
  <div class="row"> 
    <div class="col-md-6 secondrow">
      <div class="row">
        <a href="<?php echo web_root; ?>admin/modules/lesson/index.php" title="Lectii"> 
        <div class="imgstretch">
          <img src="<?php echo web_root; ?>admin/adminMenu/images/lesson1.gif"> 
         </div>
         <label>Lectii</label>
        </a>
      </div>
    </div> 
    <div class="col-md-6 secondrow">
      <div class="row">
        <a href="<?php echo web_root; ?>admin/modules/exercises/index.php" title="Exercitii"> 
        <div class="imgstretch">
          <img src="<?php echo web_root; ?>admin/adminMenu/images/exercises.jpg"> 
         </div>
         <label>Exercitii</label>
        </a>
      </div>
    </div> 
  </div>
    <div class="row">
       <?php if($_SESSION['TYPE']=="Administrator"){ ?>
    <div class="col-md-6 secondrow">
      <div class="row">
        <a href="<?php echo web_root; ?>admin/modules/user/index.php" title="Administare utilizatori"> 
        <div class="imgstretch">
          <img src="<?php echo web_root; ?>admin/adminMenu/images/user.png"> 
         </div>
         <label>Manage Utilizatori</label>
        </a>
      </div>
    </div>
  <?php } ?>
     
  </div>
  
</div>