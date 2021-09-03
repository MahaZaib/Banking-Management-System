

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication3.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Home.css" rel="stylesheet" />

</head>
<body>
    
        <header> 
            
            <div class="nav-area">
                <div class="logo">
                    <a class="navbar-brand" href="Home.aspx">
                    <!--<asp:Image ID="Image4" r unat="server" ImageUrl="assets/logo.jpg" Width="170px" />-->
                    <text id="txt" style="font-size:40px; font-weight:900; color:white">Banking System</text></a>
                </div>
                <ul class="menu-area">
                    <li>
                        <a href="Home.aspx"> Home Page</a>
                    </li>
                   
                     <li>
                        <a href="ViewCustomer.aspx">View Customer</a>
                    </li>
                    <li>
                        <a href="TransactionMoney.aspx">Transaction Money</a>
                    </li>
                    <li>
                        <a href="TransactionHistory.aspx">Transaction History</a>
                    </li>
                  </ul>
                    
         </div>     
       
</header>

</body>
</html>


