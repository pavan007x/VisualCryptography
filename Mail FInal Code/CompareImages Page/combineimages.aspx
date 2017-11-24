<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="combineimages.aspx.cs" Inherits="combineimages" Title="Combine Images" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <b> <asp:HyperLink ID="HyperLink2" runat="server" 
        style="position:absolute; top: 85px; left: 120px;" 
        NavigateUrl="~/new user.aspx" >USER DETAILS</asp:HyperLink>
        
    <asp:HyperLink ID="HyperLink3" runat="server" 
        style="position:absolute; top: 85px; left: 275px;" 
        NavigateUrl="~/combineimages.aspx" >CAPTCHA COMPARISON</asp:HyperLink>
        

        <asp:Label ID="Label1" runat="server" Text="COMBINE IMAGES" ForeColor=Red Font-Size=Large Font-Underline=true
        style="position:absolute; top: 330px; left: 590px;" ></asp:Label>

    <asp:FileUpload ID="FileUpload1" runat="server" 
        style="top: 365px; left: 415px; position: absolute; height: 22px; width: 217px" />
        
    <asp:Image ID="Image1" runat="server" 
        
        style="top: 405px; left: 415px; position: absolute; height: 50px; width: 160px" 
        Visible="False" />
        
    <asp:FileUpload ID="FileUpload2" runat="server" 
        style="top: 363px; left: 800px; position: absolute; height: 22px; width: 217px" />
        
    <asp:Image ID="Image2" runat="server" 
        
        style="top: 406px; left: 800px; position: absolute; height: 50px; width: 160px" 
        Visible="False" />
        
    <asp:Button ID="Button1" runat="server" 
        style="top: 525px; left: 415px; position: absolute; height: 26px; width: 141px" 
        Text="Combine Images" onclick="Button1_Click" Visible="False" />
        
    <asp:Image ID="Image3" runat="server" 
        
        
        style="top: 565px; left: 450px; position: absolute; height: 100px; width: 402px" 
        Visible="False" />
        
    <asp:LinkButton ID="LinkButton1" runat="server" 
        style="position:absolute; top: 545px; left: 780px" 
        onclick="LinkButton1_Click">Upload Files</asp:LinkButton>
        
    <asp:Label ID="Label3" runat="server" Text="Label" 
        style="position:absolute; top: 529px; left: 974px; height: 20px; width: 266px;" ></asp:Label>
        
    <asp:Image ID="Image4" runat="server" 
        
        
        style="top: 565px; left: 450px; position: absolute; height: 100px; width: 402px" 
        Visible="False" /></b>
        
</asp:Content>

