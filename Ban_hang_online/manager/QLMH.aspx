<%@ Page Title="" Language="C#" MasterPageFile="~/manager/Admin.Master" AutoEventWireup="true" CodeBehind="QLMH.aspx.cs" Inherits="Ban_hang_online.manager.QLMH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        height: 26px;
        text-align: center;
    }
    .auto-style4 {
        width: 39%;
    }
    .auto-style5 {
        text-align: center;
        width: 306px;
    }
    .auto-style6 {
        height: 26px;
        width: 306px;
        text-align: center;
    }
</style>
    <link rel="stylesheet" href="Styles/Styles.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style4">
    <tr>
        <td class="auto-style5">Mã sản phẩm</td>
        <td class="auto-style2">
            <asp:TextBox ID="txt_IDSP" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Tên sản phẩm</td>
        <td class="auto-style2">
            <asp:TextBox ID="txt_TenSP" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Giá</td>
        <td class="auto-style3">
            <asp:TextBox ID="txt_Gia" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mô tả</td>
        <td class="auto-style2">
            <asp:TextBox ID="txt_MoTa" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Ảnh</td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Số lượng </td>
        <td class="auto-style2">
            <asp:TextBox ID="txt_SoLuong" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Button ID="btn_Them" runat="server" OnClick="btn_Them_Click" Text="Thêm" />
        </td>
        <td class="auto-style2">
            <asp:Button ID="btn_Sua" runat="server" Text="Sửa" OnClick="btn_Sua_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:Label ID="lbl_ThongBao" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:GridView ID="grv_MatHang" runat="server" Height="349px" Width="577px" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" />
                    <asp:BoundField DataField="Title" HeaderText="Tên sản phẩm" />
                    <asp:BoundField DataField="Gia" HeaderText="Giá" />
                    <asp:BoundField DataField="Mota" HeaderText="Mô tả" />
                    <asp:ImageField DataImageUrlField="Link" HeaderText="Ảnh" >
                    </asp:ImageField>
                    <asp:BoundField DataField="SoLuongTon" HeaderText="Số lượng" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>
