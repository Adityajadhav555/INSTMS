<?php
if(isset($_SESSION['loggedin']) && $_SESSION['loggedin']==true){
  $loggedin= true;
}
else{
  $loggedin = false;
}
echo '<style>
.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  height: auto;
  background-color: #343a40;
  color: white;
  text-align: left;
}
.image{
    position: absolute;
    right: 0px;
    bottom: 0px;
}
.pad{
    margin-bottom:50px;
}

</style>

<container>
<div class="pad"></div>
<div class="footer">
    <span style="font-family:Courier">Powered By NITC</span>
    <div class="image">
    <img src="images/nitc.png" class="img-thumbnail" alt="NIT calicut" width=35px height=35px>
    </div>
</div>
</container>';
?>
