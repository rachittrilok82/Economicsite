
<!DOCTYPE html>
<html>
<head>
  <title>Print Bill</title>
  <link rel="shortcut icon" href="//cdn.shopify.com/s/files/1/2484/9148/files/SDQSDSQ_32x32.png?v=1511436147" type="image/png">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style>
        body{
            background-color: antiquewhite;
        }
        .container{
            background-color: bisque;
           margin-top: 14rem;
           text-align: center;
           height: 20rem;
            border-radius: 20px;
           
        }

       
        .head1{
            margin-top: 50px;
        }
        label{
            font-weight: bold;
            font-size: 20px;

        }
        .butt{
            text-align: center;
            background-color: blue;
            color: white;
            margin: 10px;
            padding: 10px 20px;
            font-size: 20px;
            border-radius: 10px;

        }
        .butt:hover{
            background-color: brown;
            
        }
        
        .head2{
            background-color: burlywood;
        }

    </style>
</head>
<body>

<div class="container main" id="main" >
    <form method="POST" action="billdisplay.php">
    <div class="row head2">
        <div class="col-md-12 ">
            <h2 class="box1">Enter the dates between which bill has to be Generated</h2>
        </div>
    </div>
    <div class="row head1">
        <div class="col-md-2 offset-md-1">
            <label>From: </label>
         </div>
         <div class="col-md-5 ">   
            <input type="date" id="date1" name="date1" placeholder="Starting Date" required><br><br>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2 offset-md-1">
            <label>To: </label>
        </div>
        <div class="col-md-5 ">
            <input type="date" id="date2"  name="date2" placeholder="Ending Date" required><br><br>
        </div>
    </div>
    <div class="row">
        <div class="col-md-10 ">
            <input type="submit" class="butt" name="print" onclick="hideing()" value="Print">
        </div>
    </div>
    
    </form>
    
</div>



</body>
</html>

