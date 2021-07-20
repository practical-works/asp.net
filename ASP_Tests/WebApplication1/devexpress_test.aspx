<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="devexpress_test.aspx.cs" Inherits="WebApplication1.devexpress_test" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxHtmlEditor.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxHtmlEditor" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxSpellChecker.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpellChecker" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server" Text="Check me out" 
            CheckState="Unchecked" Theme="iOS">
        </dx:ASPxCheckBox>
    
        <dx:ASPxHtmlEditor ID="ASPxHtmlEditor1" runat="server">
        </dx:ASPxHtmlEditor>
        <br />
    
    </div>
    </form>
</body>
</html>
