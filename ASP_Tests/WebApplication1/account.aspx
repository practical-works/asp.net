<%@ Page Title="Account" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="WebApplication1.account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-size: xx-large">
        This account page must be used as a main test page.<br />
        My session value (name) is <i><%= Session["name"] %></i></p>
    <br />
</asp:Content>
