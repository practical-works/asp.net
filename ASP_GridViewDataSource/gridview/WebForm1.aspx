<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="gridview.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="Matricule" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" ShowFooter="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Matricule" SortExpression="Matricule">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Matricule") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Matricule") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nom" SortExpression="Nom">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nom") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nom") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prénom" SortExpression="Prénom">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Prénom") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Prénom") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fonction" SortExpression="Fonction">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Fonction") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Fonction") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Salaire" SortExpression="Salaire">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Salaire") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Salaire") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Département" SortExpression="Département">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="Département" 
                            DataValueField="Département" SelectedValue='<%# Bind("Département") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Département") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Modifier" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Mettre à jour" onclick="LinkButton1_Click1"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="Annuler"></asp:LinkButton>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Label ID="Label1" runat="server" Text="Matricule:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Nom:"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Edit" onclick="LinkButton1_Click" Text="Modifier"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sélectionner" ShowHeader="False">
                    <FooterTemplate>
                        <asp:Label ID="Label3" runat="server" Text="Prénom:"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Fonction:"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <br />
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                            CommandName="Select" Text="Sélectionner"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Supprimer" ShowHeader="False">
                    <FooterTemplate>
                        <asp:Label ID="Label5" runat="server" Text="Salaire:"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Département:"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="Département" 
                            DataValueField="Département">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:SGBD1_TP06ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Employés]"></asp:SqlDataSource>
                        <br />
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            Text="Ajouter" />
                        <br />
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton6" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Supprimer"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SGBD1_TP06ConnectionString %>" 
            SelectCommand="SELECT * FROM [Employés]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
