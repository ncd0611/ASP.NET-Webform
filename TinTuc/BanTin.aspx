<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="BanTin.aspx.cs" Inherits="TinTuc.BanTin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <fieldset class="col-9 row" style="min-height:800px">
            <asp:Repeater ID="rpIDBanTin" runat="server">
                <ItemTemplate>
                        <legend><%# Eval("noiDung") %></legend>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="rpChiTiet" runat="server">
                <ItemTemplate> 
                    <ul style="margin:10px 30px 30px 20px ; text-align:justify">
                        <li>
                            <a href="ChiTiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval("ID") %>"><div style="text-decoration:underline"><%# Eval("tieuDe")%></div></a>
                        </li>
                    </ul>
                </ItemTemplate>
            </asp:Repeater>
        </fieldset>
        <fieldset class="col-3 row" style="min-height:800px">
            <legend>Mới nhất</legend>
            <asp:Repeater ID="rpChiTiet2" runat="server">
                <ItemTemplate>
                    <ul style="list-style:none;">
                        <li>
                            <a href="ChiTiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval("ID") %>"><div style="text-decoration:underline" class="col-12"><%# Eval("tieuDe")%></div></a>
                        </li>
                    </ul>
                </ItemTemplate>
            </asp:Repeater>
        </fieldset> 
        <fieldset style="margin-top:15px" class="col-12">
            <legend>Nổi bật</legend>
            <div class="col-4">
                <img class="img" src="Img/Nike9.jpg" />
                <a style="text-decoration:none" href="/ChiTiet.aspx?idbantin=1&ID=3"><h3> Nike Air Force sẽ sớm tái hợp cùng PEACEMINUSONE trong tháng 9 này </h3></a>
            </div>
            <div class="col-4">
                <img class="img" src="Img/Empty.jpeg" />
                <a style="text-decoration:none" href="/ChiTiet.aspx?idbantin=2&ID=8"><h3> EMPTY – Local Brand với câu chuyện “tắt lo âu, nghe đam mê” </h3></a>
            </div>
            <div class="col-4">
                <img class="img" src="Img/black-out-tuesday-music-industy-campaign-01-1160x800.jpg" />
                <a style="text-decoration:none" href="/ChiTiet.aspx?idbantin=3&ID=13"><h3>#TheShowMustBePaused: Tắt nhạc để nghe nỗi đau của nạn phân biệt chủng tộc</h3></a>
            </div>
         </fieldset>
     </div>
</asp:Content>
