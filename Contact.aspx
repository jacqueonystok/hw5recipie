<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">

               <div id="heading">
            <h1>Wicked Easy Recipies</h1>
            Using 5 Ingredients or Less!
        </div>

        <br />
   <div id="nav">
            <a href="./Default.aspx">Home</a> &#124;
            <a href="./newrecipe.aspx">New Recipie</a> &#124;
            <a href="./AboutUs.aspx">About Us</a> &#124;
             <a href="./Contact.aspx">Contact</a> &#124;


        </div>
               
               <br />
               
       <br />
      
       <div id="contact">
           <asp:Label ID="Label1" runat="server" Text="Your E-Mail Address"></asp:Label>
           <br />
           <asp:TextBox ID="emailAddress" runat="server" BorderStyle="Inset" Height="32px" Width="229px"></asp:TextBox>
           <br />
           <br />
           <asp:Label ID="Label2" runat="server" Text="Your Message:"></asp:Label>
           <br />

           <asp:TextBox ID="message" runat="server" BorderStyle="Outset" Height="135px" Width="255px"></asp:TextBox>
       </div>
        </form>
     
</body>
</html>
