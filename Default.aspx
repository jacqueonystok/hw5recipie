

<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
            <a href="./NewRecipie.aspx">New Recipie</a> &#124;
            <a href="./AboutUs.aspx">About Us</a> &#124;
             <a href="./Contact.aspx">Contact</a> &#124;


        </div>

    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HW5 %>" SelectCommand="SELECT * FROM [MainRTb]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RecipieID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="RecipieName" HeaderText="Recipie Name" SortExpression="RecipieName" />
                <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SubmittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="RecipieID" DataNavigateUrlFormatString="details.aspx?RecipieID={0}" HeaderText="Submitted By" Text="Select" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
