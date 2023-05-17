using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Ban_hang_online.manager
{
    public partial class QLMH : System.Web.UI.Page
    {
        SqlDataSource SqlDS = new SqlDataSource();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDS.ConnectionString = "Data Source=LAPTOP-MVDPVGDK;Initial Catalog=LTW;Integrated Security=True";
            Load_DSNhanSu();

        }
        private void Load_DSNhanSu()
        {
            SqlDS.SelectCommand = "SELECT * FROM SanPham";

            this.grv_MatHang.DataSource = SqlDS;
            this.grv_MatHang.DataBind();
        }

        protected void btn_Them_Click(object sender, EventArgs e)
        {
            SqlDS.InsertCommand = "INSERT INTO SANPHAM(TITLE,GIA,MOTA,LINK,SOLUONGTON) VALUES (@TITLE,@GIA,@MOTA,@LINK,@SOLUONGTON)";
            SqlDS.InsertParameters.Add("TITLE", TypeCode.String, this.txt_TenSP.Text);
            SqlDS.InsertParameters.Add("GIA", TypeCode.String, this.txt_Gia.Text);
            SqlDS.InsertParameters.Add("MOTA", TypeCode.String, this.txt_MoTa.Text);
            SqlDS.InsertParameters.Add("LINK", TypeCode.String, this.txt_TenSP.Text);
            SqlDS.InsertParameters.Add("SOLUONGTON", TypeCode.String, this.txt_SoLuong.Text);
            SqlDS.Insert();
            Load_DSNhanSu();
        }

        protected void btn_Sua_Click(object sender, EventArgs e)
        {
            SqlDS.UpdateCommand = "UPDATE SANPHAM SET TITLE=@TITLE,GIA=@GIA,MOTA=@MOTA,LINK=@LINK,SOLUONGTON=@SOLUONGTON WHERE MASP=@MASP";

            SqlDS.UpdateParameters.Add("TITLE", TypeCode.String, this.txt_TenSP.Text);
            SqlDS.UpdateParameters.Add("GIA", TypeCode.String, this.txt_Gia.Text);
            SqlDS.UpdateParameters.Add("MOTA", TypeCode.String, this.txt_MoTa.Text);
            SqlDS.UpdateParameters.Add("LINK", TypeCode.String, this.txt_IDSP.Text);
            SqlDS.UpdateParameters.Add("SOLUONGTON", TypeCode.String, this.txt_SoLuong.Text);
            SqlDS.UpdateParameters.Add("MASP", TypeCode.String, this.txt_IDSP.Text);

            SqlDS.Update();

            Load_DSNhanSu();

        }
    }
}