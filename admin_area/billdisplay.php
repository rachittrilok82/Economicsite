<?php
include("includes/db.php");
?>
<!DOCTYPE html>
<html>
<head>
  <title>Print Bill</title>
  <link rel="shortcut icon" href="//cdn.shopify.com/s/files/1/2484/9148/files/SDQSDSQ_32x32.png?v=1511436147" type="image/png">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="print.css" media="print">
<style>
    h2{
        margin:20px;
    }
</style>
</head>

<body>

<div class="container">
  <div class="row">
    <div class="col-md-12">
      <h2>Bill</h2>
      <table class="table table-bordered print">
        <thead>
          <tr>
            <th>Serial No.</th>
            <th>Order Id</th>
            <th>Customer Id</th>
            <th>Amount</th>
            <th>Invoice Number</th>
            <th>Quantity</th>
            <th>Order Date</th>
          </tr>
        </thead>
        <tbody>
          <?php
          if(isset($_POST['print'])){
          $d1=$_POST['date1'];
          $d2=$_POST['date2'];
          $sn=1;
          $sum=0;
          $user_qry="SELECT * from customer_orders where order_date>='$d1' and order_date<='$d2'";
          $user_res=mysqli_query($con,$user_qry);
          while($user_data=mysqli_fetch_assoc($user_res))
          {
          ?>
          <tr>
            <td><?php echo $sn; ?></td>
            <td><?php echo $user_data['order_id']; ?></td>
            <td><?php echo $user_data['customer_id']; ?></td>
            <td><?php echo $user_data['due_amount']; ?></td>
            <td><?php echo $user_data['invoice_no']; ?></td>
            <td><?php echo $user_data['qty']; ?></td>
            <td><?php echo $user_data['order_date']; ?></td>
          </tr>
          <?php
          $sn++;
          $sum=$sum+$user_data['due_amount'];
          }
        
        }
        else{
            alert("Fill the dates first !!");
        }
          ?>
        </tbody>
      </table>
      <?php
        echo("<br><h4>Total Amount :<b> $<i>$sum</i></b></h4>"); 
      ?>

      <div class="text-center">
        <button onclick="window.print();" class="btn btn-primary" id="print-btn">Print</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>