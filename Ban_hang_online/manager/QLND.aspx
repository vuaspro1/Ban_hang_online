<%@ Page Title="" Language="C#" MasterPageFile="~/manager/Admin.Master" AutoEventWireup="true" CodeBehind="QLND.aspx.cs" Inherits="Ban_hang_online.manager.QLND" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        &nbsp;</p>
    <p class="auto-style4">
        ID Khách Hàng
        <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
        <asp:Button ID="btn_xoa" runat="server" OnClick="btn_xoa_Click1" Text="Xóa" ValidationGroup="xoa" />
        <asp:RequiredFieldValidator ID="rfv_yeucaunhapid" runat="server" ControlToValidate="txt_id" ErrorMessage="Yêu cầu nhập ID" ForeColor="Red" ValidationGroup="xoa"></asp:RequiredFieldValidator>
    </p>
    <p class="auto-style4">
        <asp:Label ID="lbl_thongbao" runat="server"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:GridView ID="grv_dsKhachHang" runat="server">
        </asp:GridView>
    </p>
</asp:Content>
