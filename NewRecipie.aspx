<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipie.aspx.vb" Inherits="Default2" %>

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
    
    </div>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HW5 %>" DeleteCommand="DELETE FROM [Table] WHERE [IdNew] = @IdNew" InsertCommand="INSERT INTO [Table] ([IdNew], [RecipieName], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Prep], [Notes]) VALUES (@IdNew, @RecipieName, @SubmittedBy, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Prep, @Notes)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [RecipieName] = @RecipieName, [SubmittedBy] = @SubmittedBy, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Prep] = @Prep, [Notes] = @Notes WHERE [IdNew] = @IdNew">
                   <DeleteParameters>
                       <asp:Parameter Name="IdNew" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="IdNew" Type="Int32" />
                       <asp:Parameter Name="RecipieName" Type="String" />
                       <asp:Parameter Name="SubmittedBy" Type="String" />
                       <asp:Parameter Name="Ingredient1" Type="String" />
                       <asp:Parameter Name="Ingredient2" Type="String" />
                       <asp:Parameter Name="Ingredient3" Type="String" />
                       <asp:Parameter Name="Ingredient4" Type="String" />
                       <asp:Parameter Name="Ingredient5" Type="String" />
                       <asp:Parameter Name="Prep" Type="String" />
                       <asp:Parameter Name="Notes" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="RecipieName" Type="String" />
                       <asp:Parameter Name="SubmittedBy" Type="String" />
                       <asp:Parameter Name="Ingredient1" Type="String" />
                       <asp:Parameter Name="Ingredient2" Type="String" />
                       <asp:Parameter Name="Ingredient3" Type="String" />
                       <asp:Parameter Name="Ingredient4" Type="String" />
                       <asp:Parameter Name="Ingredient5" Type="String" />
                       <asp:Parameter Name="Prep" Type="String" />
                       <asp:Parameter Name="Notes" Type="String" />
                       <asp:Parameter Name="IdNew" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IdNew" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                   <Fields>
                       <asp:BoundField DataField="IdNew" HeaderText="IdNew" ReadOnly="True" SortExpression="IdNew" />
                       <asp:BoundField DataField="RecipieName" HeaderText="RecipieName" SortExpression="RecipieName" />
                       <asp:BoundField DataField="SubmittedBy" HeaderText="SubmittedBy" SortExpression="SubmittedBy" />
                       <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient1" SortExpression="Ingredient1" />
                       <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient2" SortExpression="Ingredient2" />
                       <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient3" SortExpression="Ingredient3" />
                       <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient4" SortExpression="Ingredient4" />
                       <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient5" SortExpression="Ingredient5" />
                       <asp:BoundField DataField="Prep" HeaderText="Prep" SortExpression="Prep" />
                       <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                       <asp:CommandField ShowInsertButton="True" />
                   </Fields>
               </asp:DetailsView>
    </form>
</body>
</html>
