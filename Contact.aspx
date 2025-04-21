<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SDT_Assignment_3.Contact" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Contact Us</h2>
    <div class="contact-form">
        <div class="form-group">
            <asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="txtName"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                ControlToValidate="txtName" ErrorMessage="Name is required." 
                CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        
        <div class="form-group">
            <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="Email is required." 
                CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="Please enter a valid email address." 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                CssClass="validation-error" Display="Dynamic"></asp:RegularExpressionValidator>
        </div>
        
        <div class="form-group">
            <asp:Label ID="lblSubject" runat="server" Text="Subject:" AssociatedControlID="txtSubject"></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" 
                ControlToValidate="txtSubject" ErrorMessage="Subject is required." 
                CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        
        <div class="form-group">
            <asp:Label ID="lblMessage" runat="server" Text="Message:" AssociatedControlID="txtMessage"></asp:Label>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" 
                ControlToValidate="txtMessage" ErrorMessage="Message is required." 
                CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        
        <div class="form-group">
            <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="btn-submit" OnClick="btnSubmit_Click" />
        </div>
        
        <asp:Label ID="lblResult" runat="server" CssClass="result-message"></asp:Label>
    </div>
</asp:Content>