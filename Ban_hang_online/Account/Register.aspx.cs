using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Ban_hang_online.Models;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Ban_hang_online.Account
{
    public partial class Register : Page
    {
        SqlDataSource SqlDS = new SqlDataSource();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = new UserManager();
            var user = new ApplicationUser() { UserName = txt_DangNhap.Text };
            IdentityResult result = manager.Create(user, txt_MatKhau.Text);
            if (result.Succeeded)
            {
                IdentityHelper.SignIn(manager, user, isPersistent: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            /*else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }*/
        }

        protected void btn_DangKy_Click(object sender, EventArgs e)
        {
            SqlDS.InsertCommand = "INSERT INTO KHACHHANG (TENKH,NGSINH,GIOITINH,SDT,DIACHI) VALUES (@TENKH,@NGSINH,@GIOITINH,@SDT,@DIACHI)";
            SqlDS.InsertParameters.Add("TENKH",TypeCode.String,this.txt_HoTen.Text);
            SqlDS.InsertParameters.Add("NGSINH", TypeCode.String, this.txt_NgaySinh.Text);
            if (rbt_Nam.Checked)
                SqlDS.InsertParameters.Add("GIOITINH", TypeCode.String, this.rbt_Nam.Text);
            else if (rbt_Nu.Checked)
                SqlDS.InsertParameters.Add("GIOITINH", TypeCode.String, this.rbt_Nu.Text);
            SqlDS.InsertParameters.Add("SDT", TypeCode.String, this.txt_SoDienThoai.Text);
            SqlDS.InsertParameters.Add("DIACHI", TypeCode.String, this.txt_DiaChi.Text);
            SqlDS.InsertCommand = "INSERT INTO TAIKHOAN (USERNAME,PASS,MAKH) VALUES (@USERNAME,@PASS,@MAKH)";
            SqlDS.InsertParameters.Add("USERNAME", TypeCode.String, this.txt_DangNhap.Text);
            SqlDS.InsertParameters.Add("PASS", TypeCode.String, this.txt_MatKhau.Text);
            SqlDS.InsertParameters.Add("MAKH", TypeCode.String, this.txt_HoTen.Text);
        }
    }
}