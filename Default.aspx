

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
     <a href="./newrecipe.aspx">New Recipie</a> &#124;
            <a href="./AboutUs.aspx">About Us</a> &#124;
             <a href="./Contact.aspx">Contact</a> &#124;


        </div>

    <div>
    
        <asp:SqlDataSource
             ID="SqlDataSource1"
             runat="server" ConnectionString="<%$ ConnectionStrings:HW5 %>" 
            SelectCommand="SELECT [RecipeName], [IdNew], [SubmittedBy] FROM [Recipes]"></asp:SqlDataSource>
        <asp:GridView 
            ID="GridView1"
             runat="server"
             AutoGenerateColumns="False"
             DataKeyNames="IdNew"
             DataSourceID="SqlDataSource1" 
            AllowPaging="True" AllowSorting="True" Width="429px"
            CssClass="cssgridview"
            >
            <Columns>
                <asp:BoundField DataField="RecipeName" HeaderText="RecipeName" SortExpression="RecipeName" />
                <asp:BoundField DataField="SubmittedBy" HeaderText="SubmittedBy" SortExpression="SubmittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="IdNew" DataNavigateUrlFormatString="details.aspx?IdNew={0}" Text="Select" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
