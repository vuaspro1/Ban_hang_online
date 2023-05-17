<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ban_hang_online._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="slide"><img src="images/Bia.jpg" style="width: 100%;" alt=""></div>

    <div class="latest-products">
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="left: 0px; top: -1px">
                    <div class="section-heading">
                        <h2>Sản Phẩm Mới Nhất</h2>
                        <a href="products.html">xem tất cả <i class="fa fa-angle-right"></i></a>
                    </div>
                </div>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource1" EnableViewState="False" RepeatColumns="4" RepeatDirection="Horizontal" Width="878px" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table border="1px" class="nav-justified">
                            <tr>
                                <td style="text-align: center">ID:
                                    <asp:Label ID="lbl_IDSP" runat="server" Text='<%# Eval("MaSP") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="lbl_TenSP" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Link") %>' Width="300px" />
                                </td>
                            </tr>
                            <tr>
                                <td>Giá:
                                    <asp:Label ID="lbl_Gia" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Mô tả:
                                    <asp:Label ID="lbl_MoTa" runat="server" Text='<%# Eval("Mota") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Số lượng:
                                    <asp:DropDownList ID="drl_SoLuong" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;&nbsp; Kho:
                                    <asp:Label ID="lbl_Kho" runat="server" Text='<%# Eval("SoLuongTon") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btn_Them" runat="server" Text="Thêm vào giỏ hàng" CommandName="addtocart" CommandArgument='<%# Eval("MaSP") %>'/>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LTWConnectionString2 %>" SelectCommand="SELECT * FROM [SanPham]"></asp:SqlDataSource>
            </div>
        </div>            
    </div>

</asp:Content>
