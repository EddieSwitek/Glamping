<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Glamping._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="vertical-align: top">
            <asp:Image ID="picTent" runat="server" Height="150px" Width="175px" ImageUrl="~/images/tent.jpg" />
        &nbsp;<span class="auto-style1" style="vertical-align: top">Enjoy a Luxury Camping Experience</span></h1>
        <p class="lead">Nestled in the mountain woods surrounded by the Moonbeam Mountains, our glamping retreat
                provides modern comfort with genuine resort elegance, offering the sights and sounds of nature.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
        </div>
    </div>

</asp:Content>
