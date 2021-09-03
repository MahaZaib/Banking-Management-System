<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransactionHistory.aspx.cs" Inherits="WebApplication3.TransactionHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="TransactionHistory.css" rel="stylesheet" />

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
   
 <form id="form1" runat="server">
        <h1 class="mt-5 mb-5" style="text-align:center; font-size:35px; color: white; margin-top:10%;" >Transaction History</h1>
    <div class="GridView">
        
            <asp:GridView ID="GridView2" runat="server" Height="332px" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
        </form>
</body>
</html>

