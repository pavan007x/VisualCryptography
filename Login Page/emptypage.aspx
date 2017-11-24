<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="emptypage.aspx.cs" Inherits="emptypage" Title="Error Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<b><asp:HyperLink ID="HyperLink2" runat="server" 
    style="position:absolute; top:85px; left:220px;" NavigateUrl="~/new user.aspx" >USER DETAILS</asp:HyperLink>
    
    <asp:HyperLink ID="HyperLink3" runat="server" 
    style="position:absolute; top:85px; left:375px" 
    NavigateUrl="~/combineimages.aspx" >CAPTCHA COMPARISON</asp:HyperLink>

     <asp:Panel ID="Panel1" runat="server" 
        style="top: 350px; left: 552px; position: absolute; height: 317px; width: 315px" 
        BackImageUrl="~/images/error.png">
    </asp:Panel>
    
    <asp:Label ID="Label3" runat="server" 
        Text="Sorry! You are not AUTHORIZED User..." 
        style="position:absolute; top: 408px; left: 523px;" Font-Bold="True" 
        Font-Size="X-Large" ForeColor="Red" ></asp:Label></b>
</asp:Content>

