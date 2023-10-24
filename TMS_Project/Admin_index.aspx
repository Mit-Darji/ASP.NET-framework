<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_dashboard.Master" AutoEventWireup="true" CodeBehind="Admin_index.aspx.cs" Inherits="TMS_Project.Admin_index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">

        <div class="col-md-12">

            <h1 class="jumbotron bg-dark text-white text-center">DASHBOARD</h1>

        </div>
    <div class="col-xl-4 col-sm-6 mb-4">
        <div class="card text-white bg-primary o-hidden h-100">
            <div class="card-body">
                <div class="card-body-icon">
                    <i class="fa fa-fw fa-comments"></i>
                </div>
                <div class="mr-5">We have total <asp:Label ID="lbltotalstudents" runat="server"></asp:Label> students</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="View_admin_students.aspx">
                <span class="float-left">View Details</span>
                <span class="float-right">
                    <i class="fa fa-angle-right"></i>
                </span>
            </a>
        </div>
    </div>
    <div class="col-xl-4 col-sm-6 mb-4">
        <div class="card text-white bg-warning o-hidden h-100">
            <div class="card-body">
                <div class="card-body-icon">
                    <i class="fa fa-fw fa-comments"></i>
                </div>
                <div class="mr-5">We have total <asp:Label ID="lbltotaltutors" runat="server"></asp:Label> tutors</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="View_admin_tutors.aspx">
                <span class="float-left">View Details</span>
                <span class="float-right">
                    <i class="fa fa-angle-right"></i>
                </span>
            </a>
        </div>
    </div>
    <div class="col-xl-4 col-sm-6 mb-4">
        <div class="card text-white bg-primary o-hidden h-100">
            <div class="card-body">
                <div class="card-body-icon">
                    <i class="fa fa-fw fa-comments"></i>
                </div>
                <div class="mr-5">We have total <asp:Label ID="lbltotalcontactdetails" runat="server"></asp:Label> contact details</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="View_contacts.aspx">
                <span class="float-left">View Details</span>
                <span class="float-right">
                    <i class="fa fa-angle-right"></i>
                </span>
            </a>
        </div>
    </div>
  </div>
</asp:Content>
