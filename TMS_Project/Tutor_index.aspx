<%@ Page Title="" Language="C#" MasterPageFile="~/Tutor_dashboard.Master" AutoEventWireup="true" CodeBehind="Tutor_index.aspx.cs" Inherits="TMS_Project.Tutor_index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <div class="row">
        <div class="col-md-12">

            <h1 class="jumbotron bg-dark text-white text-center">DASHBOARD</h1>

        </div>
        <div class="col-xl-6 col-sm-6 mb-4">
        <div class="card text-white bg-primary o-hidden h-100">
            <div class="card-body">
                <div class="card-body-icon">
                    <i class="fa fa-fw fa-comments"></i>
                </div>
                <div class="mr-5">We have total <asp:Label ID="lbltotalstudents" runat="server"></asp:Label> students</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="VIew_students.aspx">
                <span class="float-left">View Details</span>
                <span class="float-right">
                    <i class="fa fa-angle-right"></i>
                </span>
            </a>
        </div>
     </div>
    </div>
</asp:Content>
