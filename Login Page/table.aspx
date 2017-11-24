<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="table.aspx.cs" Inherits="table" Title="User Detail Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:HyperLink ID="HyperLink2" runat="server" 
    style="position:absolute; top:85px; left:220px;" NavigateUrl="~/table.aspx" >USER DETAILS</asp:HyperLink>
    <asp:HyperLink ID="HyperLink3" runat="server" 
    style="position:absolute; top:85px; left:375px" 
    NavigateUrl="~/combineimages.aspx" >CAPTCHA COMPARISON</asp:HyperLink>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" 
    style="top: 431px; left: 513px; position: absolute; height: 133px; width: 187px">
    <Columns>
        <asp:BoundField DataField="uname"  HeaderText="User-ID"  SortExpression="uname" >
            <ItemStyle Wrap="False"  />
        </asp:BoundField>
        <asp:BoundField DataField="emailaddr" HeaderText="E-Mail"
            SortExpression="emailaddr" >
            <ItemStyle Wrap="False" />
        </asp:BoundField>
        <asp:BoundField DataField="fname" HeaderText="Captcha"  SortExpression="fname">
            <ItemStyle Wrap="False" />
        </asp:BoundField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:VisualCryptographyConnectionString %>" 
    
        SelectCommand="SELECT [uname], [emailaddr], [fname] FROM [newuser] WHERE ([uname] = @uname)" 
        onselecting="SqlDataSource1_Selecting">
    <SelectParameters>
        <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
           <asp:Image ID="Image2" runat="server" 
        style="top: 330px; left: 65px; position: absolute;" 
        ImageUrl="~/Images/Tabledetails.png" />
</asp:Content>

