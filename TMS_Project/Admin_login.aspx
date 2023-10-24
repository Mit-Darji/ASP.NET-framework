<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="TMS_Project.Admin_log" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <br /><br />
        <div class="row rounded-lg">
            <div class="col-md-4 mx-auto" style="box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);
                                                 -webkit-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);
                                                 -moz-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);">
                <br />
                <div class="jumbotron text-center text-white bg-primary">
                        <h2>Admin Login</h2>
                </div>
                <asp:TextBox ID="UsernameTxt" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UsernameTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="PasswordTxt" TextMode="Password" placeholder="Enter Password" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="LoginBtn" OnClick="LoginBtn_Click" runat="server" Text="Login" CssClass="btn btn-primary btn-block" />
                <br />
            </div>

        </div>

    </div>
    <br /><br />
</asp:Content>
