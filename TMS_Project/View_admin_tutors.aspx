<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_dashboard.Master" AutoEventWireup="true" CodeBehind="View_admin_tutors.aspx.cs" Inherits="TMS_Project.View_admin_tutors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">

        <div class="col-md-12">

            <h1 class="jumbotron bg-dark text-white text-center">VIEW TUTORS DETAILS</h1>

        </div>

    </div>
     <asp:GridView CssClass="table table-bordered table-hover table-striped table-dark" ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
         <Columns>
             <asp:TemplateField HeaderText="ID">
                 <ItemTemplate>
                     <asp:Label ID="LabelID" runat="server" Text='<%# Bind("tutor_id") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="NAME">
                 <ItemTemplate>
                     <asp:Label ID="LabelName" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="EMAIL">
                 <ItemTemplate>
                     <asp:Label ID="LabelEmail" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="COUNTRY">
                 <ItemTemplate>
                     <asp:Label ID="LabelCountry" runat="server" Text='<%# Bind("country") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="CITY">
                 <ItemTemplate>
                     <asp:Label ID="LabelCity" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="SUBJECT">
                 <ItemTemplate>
                     <asp:Label ID="LabelSubject" runat="server" Text='<%# Bind("qualification") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="GENDER">
                 <ItemTemplate>
                     <asp:Label ID="LabelGender" runat="server" Text='<%# Bind("degree") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
              <asp:TemplateField HeaderText="CONTECTNO">
                 <ItemTemplate>
                     <asp:Label ID="LabelContactno" runat="server" Text='<%# Bind("contactno") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="DELETE" ShowHeader="False">
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton1" OnClientClick="return confirm('Are You Sure To Delete Data ?')" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                 </ItemTemplate>
                 <ControlStyle CssClass="btn btn-danger text-white" />
             </asp:TemplateField>
         </Columns>
    </asp:GridView>
</asp:Content>
