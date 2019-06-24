<?php
$con = mysqli_connect('localhost','root');
mysqli_select_db($con,'cars');
$nameid = $_POST['carcompany'];
$q= "select * from car_models where id = '$nameid'";
$result = mysqli_query($con,$q);
if($result->num_rows){ ?>
  <option>Select any one model</option>
<?php  while($rows = mysqli_fetch_array($result)){
    ?>
    <option value="<?php echo $rows['model_id'];?>"><?php echo $rows['model_name'];?></option>
    <?php
  }
}else{ ?>
  <option>Select any one</option>
<?php } ?>
