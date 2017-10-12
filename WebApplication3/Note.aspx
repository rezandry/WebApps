<%@ Page Title="Note" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Note.aspx.cs" Inherits="WebApplication3.Note" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="padding: 20px; margin: 10px">
        <br />
        <asp:Label Text="Title" runat="server"></asp:Label>
        <asp:TextBox ID="tbtitle" runat="server" CssClass="form-control" Width="500"></asp:TextBox>
        <asp:Label Text="Keyword" runat="server"></asp:Label>
        <asp:TextBox ID="tbkeyword" runat="server" CssClass="form-control" Width="500"></asp:TextBox><br />
        <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" CssClass="btn btn-primary" Text="Save" />
        <br />
    </div>
    <asp:GridView ID="Grid" runat="server" CssClass="table table-bordered table-striped" OnRowDeleting="Grid_RowDeleting" OnRowEditing="Grid_RowEditing" OnRowCancelingEdit="Grid_RowCancelingEdit" OnRowUpdating="Grid_RowUpdating">
        <Columns>
            <asp:CommandField ButtonType="Link" HeaderText="Edit/Delete" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="100" />
        </Columns>
    </asp:GridView>
</asp:Content>