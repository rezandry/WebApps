<%@ Page Title="Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="WebApplication3.Calculator" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">
    <div class="row">
        <br />
        <div style="position: relative; text-align: center">
            <asp:TextBox cssClass="input-group-lg" ID="ValueBox1" runat="server" Font-Size="X-Large" Height="50px" Width="200px" Wrap="False"></asp:TextBox>
            <asp:DropDownList CssClass="dropdown-toggle btn-default" ID="OperatorList" runat="server" Font-Size="X-Large" Height="50px" Width="100px">
                <asp:ListItem>+</asp:ListItem>
                <asp:ListItem>-</asp:ListItem>
                <asp:ListItem>x</asp:ListItem>
                <asp:ListItem>/</asp:ListItem>
                <asp:ListItem>mod</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox cssClass="input-group-lg" ID="ValueBox2" runat="server" Font-Size="X-Large" Height="50px" Width="200px" Wrap="False"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="position: static; text-align: center">
        <br />
        <asp:Button cssClass="center btn btn-default" ID="CalculateButton" Text="Calculate" runat="server" OnClick="CalculateButton_Click" />
        <h2><asp:Label cssClass="center" ID="ResultLabel" runat="server"></asp:Label></h2>
    </div>
</div>
</asp:Content>