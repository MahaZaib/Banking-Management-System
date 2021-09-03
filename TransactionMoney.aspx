<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransactionMoney.aspx.cs" Inherits="WebApplication3.TransactionMoney" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="TransactionMoney.css" rel="stylesheet" />

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
           <h1 class="mt-5 mb-5" style="text-align:center; font-size:40px; color: white;" >Transfer Money</h1>
    <div class="GridView">
        <asp:GridView ID="GridView1" runat="server" Height="332px" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
         
            <div class="Sender">
                      
               <asp:Label ID="Label1" runat="server" style="color:white" Text="Sender ID :"></asp:Label>
                            <asp:TextBox  ID="txtSenderID" CssClass="form-control mb-1" runat="server" ></asp:TextBox>


                        </div>
           <div class="Receiver">
                      
               <asp:Label ID="Label3" runat="server" style="color:white" Text="Receiver ID:"></asp:Label>
                            <asp:TextBox  ID="txtReceiverID" CssClass="form-control mb-1" runat="server" ></asp:TextBox>


                        </div>
           
           <div class="amount">
                      
               <asp:Label ID="Label2" runat="server" style="color:white" Text="Amount :"></asp:Label>
                            <asp:TextBox  ID="txtAmount" CssClass="form-control mb-1" runat="server" ></asp:TextBox>


                        </div>

            <asp:Button ID="Btn_Transact" runat="server" Text="Transfer" CssClass="Transact" OnClick="btnTransact_Click" ValidationGroup="allValidations"/>
					
        &nbsp;&nbsp;&nbsp;&nbsp;
					<asp:Label ID="lblMessage" runat="server" Text="" style="color:white"></asp:Label>
           
           
           </form>
    


</body>
</html>

