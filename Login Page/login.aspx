<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Login Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <b><asp:Label ID="Label1" Font-Size=Large Font-Underline=true ForeColor=Red runat="server" Text="LOGIN" 
        style="position:absolute; top: 350px; left: 570px;" ></asp:Label> 
   <asp:Label ID="Label3" runat="server" Text="USERNAME" 
        style="position:absolute; top: 380px; left: 470px;" ></asp:Label>
        
    <asp:TextBox ID="TextBox1" runat="server" 
        style="top: 380px; left: 590px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        
   
   
        
    <asp:Label ID="Label5" runat="server" Text="Browse Your Captcha Image" 
        style="position:absolute; top: 427px; left: 380px;" ></asp:Label>
        
    <asp:FileUpload ID="FileUpload1" runat="server" 
        style="top: 427px; left: 588px; position: absolute; height: 22px; width: 217px" />
        
    <asp:LinkButton ID="LinkButton1" runat="server" 
    style="position:absolute; top: 427px; left: 830px; width: 111px;" 
        onclick="LinkButton1_Click">Show Images</asp:LinkButton>
        
    <asp:Label ID="Label8" runat="server" Text="Label" 
    style="position:absolute; top: 381px; left: 1042px;" Font-Bold="True" 
    Font-Size="Large" Font-Underline="True" ForeColor="Red" ></asp:Label>
    
    <asp:Label ID="Label6" runat="server" Text="Server Captcha" 
        style="position:absolute; top: 500px; left: 380px;" ></asp:Label>
        
    <asp:Image ID="Image1" runat="server" 
        style="top: 528px; left: 445px; position: absolute; height: 50px; width: 160px" 
        ImageUrl="~/Images/captchaempty10.png" />
        
    <asp:Label ID="Label7" runat="server" Text="Captcha" 
        style="position:absolute; top: 585px; left: 380px;" ></asp:Label>
        
    <asp:Image ID="Image2" runat="server" 
        style="top: 628px; left: 445px; position: absolute; height: 50px; width: 160px" 
        ImageUrl="~/Images/captchaempty10.png" />
        
    <asp:HyperLink ID="HyperLink3" runat="server" 
        style="position:absolute; top: 784px; left: 863px;" 
        NavigateUrl="~/new user.aspx" >Need an account? Sign Up</asp:HyperLink>
        
    <asp:Button ID="Button1" runat="server" Font-Bold="True" 
        onclick="Button1_Click" 
        style="top: 782px; left: 745px; position: absolute; height: 26px; width: 56px" 
        Text="Login" /></b>

         <asp:Panel ID="Panel2" runat="server" 
        style="top: 350px; left: 12px; position: absolute; height: 317px; width: 340px" 
        BackImageUrl="~/images/682c8_bank-hack-followup-head-to-come-showcase_image-6-a-7246.png">
    </asp:Panel>

     <asp:Panel ID="Panel1" runat="server" 
        style="top: 350px; left: 1052px; position: absolute; height: 317px; width: 340px" 
        BackImageUrl="~/images/phis.png">
    </asp:Panel>

       <b   <asp:Label ID="Label4" runat="server" Text="PASSWORD" 
        style="position:absolute; top:717px; left: 470px;" ></asp:Label></b>

         <asp:TextBox ID="TextBox2" runat="server" 
        style="top: 717px; left: 590px; position: absolute; height: 22px; width: 128px" 
        TextMode="Password"></asp:TextBox>

</asp:Content>

