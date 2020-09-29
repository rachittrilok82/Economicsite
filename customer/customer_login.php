<!--CSS Style for Admin Button-->
<style>
    .butt {
  display: inline-block;
  border-radius: 4px;
  background-color: #00c8c8;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 10px;
  width: 160px;
  transition: all 0.5s;
  cursor: pointer;
  position:relative;
  left:920px;
  margin-bottom: 0px;
}

.butt span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.butt span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.butt:hover span {
  padding-right: 25px;
}

.butt:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
<div class="box" ><!-- box Starts -->

<div class="box-header" ><!-- box-header Starts -->
<a href="http://localhost/Ecommerce/ecommerce-website-master/admin_area/login.php"><button class="butt" ><span>Admin Login </span></button></a>

<center>

<h1>Login</h1>

<p class="lead" >Already our Customer</p>


</center>

<p class="text-muted" >
Welcome to The Cake Carnival. You have joined the ranks of our hundreads of thousands of customers.We are glad that you that you have decided to use our services. Wish you have a good time with us. Thank you for joiing us !.

</p>




</div><!-- box-header Ends -->

<form action="checkout.php" method="post" ><!--form Starts -->

<div class="form-group" ><!-- form-group Starts -->

<label>Email</label>

<input type="text" class="form-control" name="c_email" required >

</div><!-- form-group Ends -->

<div class="form-group" ><!-- form-group Starts -->

<label>Password</label>

<input type="password" class="form-control" name="c_pass" required >

<h4 align="center">

<a href="forgot_pass.php"> Forgot Password </a>

</h4>

</div><!-- form-group Ends -->

<div class="text-center" ><!-- text-center Starts -->

<button name="login" value="Login" class="btn btn-primary" >

<i class="fa fa-sign-in" ></i> Log in


</button>

</div><!-- text-center Ends -->


</form><!--form Ends -->

<center><!-- center Starts -->

<a href="customer_register.php" >

<h3>New ? Register Here</h3>

</a>


</center><!-- center Ends -->


</div><!-- box Ends -->

<?php

if(isset($_POST['login'])){

$customer_email = $_POST['c_email'];

$customer_pass = $_POST['c_pass'];

$select_customer = "select * from customers where customer_email='$customer_email' AND customer_pass='$customer_pass'";

$run_customer = mysqli_query($con,$select_customer);

$get_ip = getRealUserIp();

$check_customer = mysqli_num_rows($run_customer);

$select_cart = "select * from cart where ip_add='$get_ip'";

$run_cart = mysqli_query($con,$select_cart);

$check_cart = mysqli_num_rows($run_cart);

if($check_customer==0){

echo "<script>alert('password or email is wrong')</script>";

exit();

}

if($check_customer==1 AND $check_cart==0){

$_SESSION['customer_email']=$customer_email;

echo "<script>alert('You are Logged In')</script>";

echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";

}
else {

$_SESSION['customer_email']=$customer_email;

echo "<script>alert('You are Logged In')</script>";

echo "<script>window.open('checkout.php','_self')</script>";

} 


}

?>