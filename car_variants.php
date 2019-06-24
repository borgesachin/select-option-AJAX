<?php
$con = mysqli_connect('localhost','root');
mysqli_select_db($con,'cars');
$mainid = $_POST['cardetails'];
$q= "select * from car_variants where model_id = '$mainid'";
$result = mysqli_query($con,$q);
if($result->num_rows){
  while($rows = mysqli_fetch_array($result)){
    ?>
    <option>
      <?php
        echo $rows['variants_name'];
       ?>
    </option>
    <?php
  }
}else{ ?>
  <option>Select any one</option>
<?php } ?>
