<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ban_hang_online.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <table align="center" class="nav-justified" style="width: 43%; height: 291px; margin-right: 0px; margin-top: 0px">
    <tr>
        <td class="text-center" colspan="2" style="font-size: large"><strong>ĐĂNG NHẬP</strong></td>
    </tr>
    <tr>
        <td class="text-right" style="width: 577px">Tên đăng nhập:</td>
        <td class="text-left" style="width: 704px">
            <asp:TextBox ID="txt_TenDangNhap" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="text-right" style="width: 577px">Mật khẩu:</td>
        <td class="text-left" style="width: 704px">
            <asp:TextBox ID="txt_MatKhau" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="text-center" style="width: 577px">&nbsp;</td>
        <td class="text-left" style="width: 704px">
            <asp:Label ID="lbl_Error" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="text-center" style="width: 577px">&nbsp;</td>
        <td class="text-left" style="width: 704px">
            <asp:Button ID="btn_DangNhap" runat="server" OnClick="btn_DangNhap_Click" Text="Đăng Nhập" />
        </td>
    </tr>
</table>
    
</asp:Content>
