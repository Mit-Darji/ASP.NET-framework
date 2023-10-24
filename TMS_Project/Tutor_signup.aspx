<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_signup.aspx.cs" Inherits="TMS_Project.Tutor_signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />

    <div class="container" style="box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);
-webkit-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);
-moz-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);">
        <br />
        <div class="row">
            <div class="col-md-12">
            <h1 class="jumbotron bg-primary text-white text-center">Tutor SignUp</h1>
                </div>
        </div>

        <div class="row">

            <div class="col-md-4">

                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator18" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Surname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator20" runat="server" ErrorMessage="Surname is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator21" runat="server" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator22" runat="server" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Age Should be Within 20 to 60" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="20" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <br />
                 <asp:TextBox ID="EmailTextBox" class="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator controlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator controlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RegularExpression1" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                 <asp:TextBox ID="SubjectTextBox" CssClass="form-control" placeholder="Enter Subject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator28" runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>
                <br />
            </div>

            <div class="col-md-4">
                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator24" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="6" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator25" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                <br />
                 <asp:DropDownList ID="QualificationDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Qualification</asp:ListItem>
                    <asp:ListItem>Graduation</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                     <asp:ListItem>Mphil</asp:ListItem>
                     <asp:ListItem>PHD</asp:ListItem>
                     <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Qualification" ControlToValidate="QualificationDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Qualification is Required"></asp:RequiredFieldValidator>
               
    
            </div>

            <div class="col-md-4">
              <asp:TextBox ID="DegreeTextBox" CssClass="form-control" placeholder="Enter Degree" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="DegreeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Degree is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="ExperienceDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Experience</asp:ListItem>
                    <asp:ListItem>1 year</asp:ListItem>
                    <asp:ListItem>2 years</asp:ListItem>
                    <asp:ListItem>3 years</asp:ListItem>
                    <asp:ListItem>4 years</asp:ListItem>
                    <asp:ListItem>5+ years</asp:ListItem>
                    <asp:ListItem>8+ years</asp:ListItem>
                    <asp:ListItem>10+ years</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Experience" ControlToValidate="ExperienceDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator19" runat="server" ErrorMessage="Experience is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Contact No is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="UsernameTextBox" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator15" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator16" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="PasswordTextBox" ID="RegularExpressionValidator1" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Please Enter Strong Password" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>
                <br />
                
                <asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control" placeholder="Re-Enter Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator17" runat="server" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Both Password Must be Identical"></asp:CompareValidator>
            </div>
        </div>
        <br />
        <div class="row">

            <div class="col-md-6 mx-auto text-center">
                <asp:Button ID="TutorSignUpButton" Onclick="TutorSignUpButton_Click" runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" />
                 <a href="Tutor_login.aspx">Already a user? LOGIN</a>
            </div> 
        </div>
        
        <br />
    </div>

    <br />
</asp:Content>
