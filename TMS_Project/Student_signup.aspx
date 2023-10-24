<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_signup.aspx.cs" Inherits="TMS_Project.Student_signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        //function ExceptionAlert(msg) {
        //    Swal.fire(
        //        'Failure',
        //           msg,
        //        'error'
        //    )
        //}
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <div class="container" style="box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);
-webkit-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);
-moz-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);">
        <br />
        <div class="row">
            <div class="col-md-12">
            <h1 class="jumbotron bg-primary text-white text-center">Student SignUp</h1>
                </div>
        </div>

        <div class="row">

            <div class="col-md-4">

                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator18" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="Enter Father Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="FatherNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator19" runat="server" ErrorMessage="Father Name is Required"></asp:RequiredFieldValidator>
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
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Age Should be Within 10 to 40" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="40" MinimumValue="10" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <br />
                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator23" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">

                <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator24" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator25" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                <br />
                 <asp:TextBox ID="EmailTextBox" class="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator controlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator controlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RegularExpression1" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:DropDownList ID="GoingToDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>Univeristy</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Going To" ControlToValidate="GoingToDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator27" runat="server" ErrorMessage="Going To is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="SubjectTextBox" CssClass="form-control" placeholder="Enter Subject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator28" runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">

                <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator29" runat="server" ErrorMessage="Contact No is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="TuitionTypeDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tuition Type</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Physical</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Tuition Type" ControlToValidate="TuitionTypeDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator30" runat="server" ErrorMessage="Tuition Type is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="TutorPreferDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tutor Preferred</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>MPHIL</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Tutor Preferred" ControlToValidate="TutorPreferDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator31" runat="server" ErrorMessage="Tutor Preferred is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="UsernameTextBox" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator32" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator33" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="PasswordTextBox" ID="RegularExpressionValidator2" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Please Enter Strong Password" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>
                <br />
                
                <asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control" placeholder="Re-Enter Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator34" runat="server" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Both Password Must be Identical"></asp:CompareValidator>
            </div>
        </div>
        <br />
        <div class="row">

            <div class="col-md-6 mx-auto text-center">
                <asp:Button ID="Button1" OnClick="StudentSignUpButton_Click" runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" />
                <a href="Student_login.aspx">Already a user? LOGIN</a>
            </div> 
        </div>
        <%--<br>
        <div class="row">
            <div class="col-md-6 mx-auto text-center">
            <a href="Student_Signup.aspx" class="btn btn-success">SignUp AS Student</a>
             <a href="Tutor_Signup.aspx" class="btn btn-info">SignUp AS Tutor</a>
                </div>
        </div>
        <br />--%>
        <br />
    </div>

    <br />
</asp:Content>
