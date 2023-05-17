<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="Ban_hang_online.AddToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: large">
        &nbsp;</p>
    <p style="font-size: large">
        <strong>GIỎ HÀNG</strong></p>
    <p style="font-size: large">
        <asp:HyperLink ID="hpl_TiepTuc" runat="server" NavigateUrl="~/Default.aspx" style="font-size: medium">Tiếp tục mua sắm</asp:HyperLink>
    </p>
    <p style="font-size: large">
        &nbsp;</p>
    <p style="font-size: large">
        <strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="margin-top: 0px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ShowFooter="True" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="STT" HeaderText="STT" />
                <asp:BoundField DataField="MaSP" HeaderText="MaSP">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Title" HeaderText="Tên Sản Phẩm">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="Link" HeaderText="Ảnh Sản Phẩm">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="Gia" HeaderText="Giá">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Số lượng" />
                <asp:BoundField DataField="totalprice" HeaderText="Tổng tiền" />
                <asp:CommandField DeleteText="Xóa" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle Height="50px" BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </strong>
    </p>
</asp:Content>
