<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span class="style1">Hello and welcome there ...</span></p>
    <p class="style1">
        This is the home page for this web application sample.</p>
    <p class="style1">
        <img alt="" class="style1" src="Images/violettaca.gif" /></p>
</asp:Content>
