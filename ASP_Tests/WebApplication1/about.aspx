<%@ Page Title="About" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="WebApplication1.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 300px;
            height: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-size: xx-large">
        This is an example of a Web application created with ASP.NET using C#.NET as a 
        server side programming langage.</p>
    <img alt="" class="style1" src="Images/loading.gif" /><br />
</asp:Content>
