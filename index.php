<?php
$con = mysqli_connect('localhost','root');
mysqli_select_db($con,'cars');
 ?>
 <!DOCTYPE html>
 <html lang="en" dir="ltr">
   <head>
     <meta charset="utf-8">
     <title>Get data from database</title>
     <link rel="stylesheet" href="bootstrap.css">
   </head>
   <body>
     <div class="container col-md-6">
       <h1 class="text-center text-danger">Get data from database</h1>
       <form>
         Username:<input type="text" name="" value="" class="form-control"><br>
         Password:<input type="text" name="" value="" class="form-control"><br>
         Company Name:<select class="form-control" onchange="myfun(this.value)">
           <option value="">Select Company Name</option>
             <?php
             $q = "select * from manufacturers";
             $result = mysqli_query($con,$q);
             while($rows = mysqli_fetch_array($result)){
               ?>
               <option value="<?php echo $rows['id'];?>"> <?php echo $rows['company_name'];?></option>
               <?php
             }
              ?>
         </select><br>
         Car Model:<select class="form-control" id="dataget" onchange="variants(this.value)">
                      <option value="">Select any one</option>
                    </select>
        Car Variants:<select class="form-control" id="cardata">
                     <option value="">Select any one</option>
                   </select>
       </form>
     </div>
     <script type="text/javascript">
       function myfun(datavalue){
         $.ajax({
           url:'car_company.php',
           type:'POST',
           data:{carcompany:datavalue},
           success:function(result){
             $('#dataget').html(result);
           }
         });
       }
       function variants(carvariants){
         $.ajax({
           url:'car_variants.php',
           type:'POST',
           data:{cardetails:carvariants},
           success:function(result){
             $('#cardata').html(result);
           }
         });
       }
     </script>
     <script type="text/javascript" src="jquery.min.js"></script>
     <script type="text/javascript" src="bootstrap.js"></script>
   </body>
 </html>
