<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TMS_Project.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function SuccessContact()
        {
            Swal.fire(
                'Success',
                'Form has been submitted successfully',
                'success'
            )
        }
        function ErrorContact() {
            Swal.fire(
                'Failure',
                'Form insertion failed',
                'error'
            )
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ======= Contact Section ======= -->
    <%--<section class="breadcrumbs">
      <div class="container">

        <%--<div class="d-flex justify-content-between align-items-center">
          <h2>Contact</h2>
          <ol>
            <li><a href="Default.aspx">Home</a></li>
            <li>Contact</li>
          </ol>
        </div>--%>

      </div>
    </section><!-- End Contact Section -->

    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      <div class="container">

        <div class="row">

          <div class="col-lg-6">

            <div class="row">
              <div class="col-md-12">
                <div class="info-box">
                  <i class="bx bx-map"></i>
                  <h3>Our Address</h3>
                  <p>Dharmsinh Desai University, Gujarat, India</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bx bx-envelope"></i>
                  <h3>Email Us</h3>
                  <p>info@example.com<br>contact@example.com</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bx bx-phone-call"></i>
                  <h3>Call Us</h3>
                  <p>+91 5589 55488 55<br>+91 6678 254445 41</p>
                </div>
              </div>
            </div>

          </div>

          <div class="col-lg-6">
           
              <div class="form-row">
                <div class="col-md-6 form-group">
                  <%--<input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />--%>
                   <asp:TextBox ID="NameTextBox" class="form-control" placeholder="Your Name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator controlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                    <%-- <div class="validate"></div>--%>
                </div>
                <div class="col-md-6 form-group">
                  <%--<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />--%>
                   <asp:TextBox ID="EmailTextBox" class="form-control" placeholder="Your Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator controlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator controlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RegularExpression1" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <%--<div class="validate"></div>--%>
                </div>
              </div>
              <div class="form-group">
                <%--<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />--%>
                <%--<asp:TextBox ID="SubjectTextBox" class="form-control" placeholder="Subject" runat="server"></asp:TextBox>--%>
                  <asp:DropDownList ID="SubjectDropDownList" class="form-control" runat="server">
                      <asp:ListItem>Select</asp:ListItem>
                      <asp:ListItem>Suggestion</asp:ListItem>
                      <asp:ListItem>Feedback</asp:ListItem>
                      <asp:ListItem>Complain</asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator InitialValue="Select" controlToValidate="SubjectDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject is required"></asp:RequiredFieldValidator>
                  <%--<div class="validate"></div>--%>
              </div>
              <div class="form-group">
                <%--<textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>--%>
                <asp:TextBox ID="MessageTextBox" class="form-control" TextMode="MultiLine" Columns="50" Rows="5" placeholder="Enter Message" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator controlToValidate="MessageTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Message is required"></asp:RequiredFieldValidator>
                  <%--<div class="validate"></div>--%>
              </div>
              <%--<div class="mb-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>--%>
              <div class="text-center">
                  <%--<button type="submit">Send Message</button>--%>
                <asp:Button CssClass="btn btn-info" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click"/>

              </div>
            
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

   
</asp:Content>
