<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ban_hang_online.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="text-left">
        <table align="center" style="width: 578px; height: 386px; border: 1px solid #000000">
            <tr>
                <td class="text-center" colspan="2" style="font-size: large"><strong>ĐĂNG KÝ&nbsp;</strong></td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 333px">Họ và Tên</td>
                <td style="width: 394px">
                    <asp:TextBox ID="txt_HoTen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 333px">Tên đăng nhập</td>
                <td style="width: 394px">
                    <asp:TextBox ID="txt_DangNhap" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 333px">Mật khẩu</td>
                <td style="width: 394px">
                    <asp:TextBox ID="txt_MatKhau" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 333px">Nhập lại mật khẩu</td>
                <td style="width: 394px">
                    <asp:TextBox ID="txt_NhapLaiMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 333px">Số điện thoại</td>
                <td style="width: 394px">
                    <asp:TextBox ID="txt_SoDienThoai" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 333px">Địa chỉ</td>
                <td style="width: 394px">
                    <asp:TextBox ID="txt_DiaChi" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 333px">Giới tính </td>
                <td style="width: 394px">
                    <asp:RadioButton ID="rbt_Nam" runat="server" Text="Nam" GroupName="GioiTinh" />
                    <asp:RadioButton ID="rbt_Nu" runat="server" Text="Nữ" GroupName="GioiTinh" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 333px">Ngày sinh</td>
                <td style="width: 394px">
                    <asp:TextBox ID="txt_NgaySinh" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 333px">&nbsp;</td>
                <td style="width: 394px">
                    <asp:Button ID="btn_DangKy" runat="server" Text="Đăng Ký" OnClick="btn_DangKy_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
