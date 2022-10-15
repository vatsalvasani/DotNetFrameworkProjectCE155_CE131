﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerdata.aspx.cs" Inherits="BusReservationSystem.customerdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/style.css">
    <title>Customer Data</title>
    <style>
        .grid{
    width: 100%; 
    word-wrap:break-word;
    table-layout: fixed;
    font-family: 'Nanum Gothic';
    padding-bottom: 10px;
    font-size: 1.75em;
}
    </style>
</head>
<body>
                <header class="header">

    <a href="#" class="logo"> </i> PurpleBus.Com </a>

     <nav class="navbar">
        <a href="adminhome.aspx">Home</a>
        <a href="addbus.aspx">Add Bus</a>
        <a href="busdata.aspx">View Bus Data</a>
        <a href="viewreservation.aspx">View Reservation</a>
        <a href="viewreview.aspx">View Review</a>
        <a href="customerdata.aspx">View Cutomer Data</a>
        
    </nav>

</header>
    <br><br><br><br><br><br>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="Email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="grid">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="mobileno" HeaderText="Mobileno" SortExpression="mobileno" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource 
                ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [customer]" 
                UpdateCommand="UPDATE [customer] Set [Name] = @name ,[Address] = @address ,[Password] = @password,[mobileno] = @mobileno"
                DeleteCommand="DELETE FROM [customer] Where [Email] = @email"
                > 

            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
