<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="chitietAdd.aspx.cs" Inherits="TinTuc.chitietAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="col-12">
            <form class="body" runat="server">
                <div style="text-align:center" class="col-12">
                    <h1 style="text-align:center">Đăng bài mới cho Website</h1>
                </div>
                <br />
                <div class="col-12">
                    <h4>Chọn bản tin:</h4>
                    <asp:DropDownList ID="drBanTin" width="10%" runat="server" ></asp:DropDownList>
                </div>
                <br /><br />
                <div class="col-12">
                    <h4>Tiêu đề </h4>
                    <asp:TextBox ID="txtTieuDe" width="40%" runat="server" ></asp:TextBox>
                </div>
                <br /><br />
                <div class="col-12">
                    <h4>Nội dung  </h4>
                    <CKEditor:CKEditorControl ID="txtNoiDung" runat="server"></CKEditor:CKEditorControl>
                </div>
                <br /><br />
                <div class="col-12">
                    <asp:Button ID="btnInsert" runat="server" Height="33px" Width="141px" Text="Đăng" OnClick="btnInsert_Click" />
                </div>
                <div class="col-12">
                    <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
		        </div>
            </form>
        </div>
</asp:Content>
