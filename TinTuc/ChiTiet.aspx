<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="TinTuc.ChiTiet1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <fieldset class="col-12" style="margin-bottom:15px">
            <legend>
                <asp:Repeater ID="rpBanTin" runat="server">
                    <ItemTemplate>
                        <p><%# Eval("noiDung") %></p>
                    </ItemTemplate>
                </asp:Repeater>
            </legend>
            <asp:Repeater ID="rpChiTiet" runat="server">
                <ItemTemplate>
                    <h1><%# Eval("tieuDe") %></h1>
                    <br />
                    <p style="text-align:right; font-style:italic">
                        Cập nhật: <%# Eval("ngayDang") %><br />
                        Số lần xem: <%# Eval("lanXem") %>
                    </p>
                    <br />
                    <%# Eval("noiDung") %>
                </ItemTemplate>
            </asp:Repeater>
        </fieldset>
        <fieldset class="col-12"  style="height:auto">
            <legend>Tin tức khác</legend>
            <div class="col-6">
                <asp:Repeater ID="rpRanDom" runat="server">
                    <ItemTemplate>
                        <ul style="list-style:none;">
                            <li>
                                <a href="ChiTiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval("ID") %>"><div style="text-decoration:underline" class="col-12"><%# Eval("tieuDe")%></div></a>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-6">
                <asp:Repeater ID="rpRanDom2" runat="server">
                    <ItemTemplate>
                        <ul style="list-style:none;">
                            <li>
                                <a href="ChiTiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval("ID") %>"><div style="text-decoration:underline" class="col-12"><%# Eval("tieuDe")%></div></a>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </fieldset>
    </div>
</asp:Content>
