<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="TinTuc.DangNhap1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <form method="post" class="row" style="min-height:520px" runat="server">
		    <div class="col-12">
                <h1>Đăng nhập</h1>
                <br /><br />
		    </div>
            <div class="col-12">
                 <h4>Tên đăng nhập</h4>
                <asp:TextBox ID="txtUserName" Width="300" Height="20" runat="server"></asp:TextBox>
                <br /><br />
		    </div>
            <div class="col-12">
                <h4>Mật Khẩu</h4>
                <asp:TextBox ID="txtPassWord" Width="300" Height="20" TextMode="Password" runat="server"></asp:TextBox>
                <br /><br />
		    </div>
            <div class="col-12">
                <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" Height="33px" Width="141px"  OnClick="btnLogin_Click" />
		    </div>
            <div class="col-12">
                <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
		    </div>
        </form>
    </center>
</asp:Content>
