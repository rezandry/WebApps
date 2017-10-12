<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="jumbotron">
            <div class="container">
                <h1>Dunno Apps</h1>
                <p>Sampai sekarang masih belum ditentukan ini aplikasi untuk apaan.</p>
            </div>
        </div>
    </div>
    <div class="row">
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img src="https://1funny.com/wp-content/uploads/2012/07/cute-panda-cub.jpg" alt="panda cute">
          <div class="caption">
            <h3>Calculator.</h3>
            <p>Need count something? Here, here :)</p>
            <p><a href="Calculator" class="btn btn-primary" role="button">Go!</a> </p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img src="https://1funny.com/wp-content/uploads/2012/07/cute-panda-cub.jpg" alt="panda cute">
          <div class="caption">
            <h3>Note!</h3>
            <p>Have some keyword that interesting but worried to forget? Write here!</p>
            <p><a href="Note" class="btn btn-primary" role="button">Go!</a> </p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img src="https://1funny.com/wp-content/uploads/2012/07/cute-panda-cub.jpg" alt="panda cute">
          <div class="caption">
            <h3>Ini adalah gambar random.</h3>
            <p>Ini kudu dikasih keterangan gambarkah?</p>
            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
          </div>
        </div>
      </div>
    </div>

</asp:Content>
