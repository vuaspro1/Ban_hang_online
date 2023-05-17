using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ban_hang_online
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("STT");
                dt.Columns.Add("MaSP");
                dt.Columns.Add("Title");
                dt.Columns.Add("quantity");
                dt.Columns.Add("Gia");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("Link");
                if (Request.QueryString["MaSP"] != null)
                {
                    if (Session["buyitems"] ==null)
                    {
                        dr = dt.NewRow();
                        String mycon = "Data Source=LAPTOP-MVDPVGDK;Initial Catalog=LTW;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from SanPham where MaSP=" + Request.QueryString["MaSP"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection= scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand= cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["STT"] = 1;
                        dr["MaSP"] = ds.Tables[0].Rows[0]["MaSP"].ToString();
                        dr["Title"] = ds.Tables[0].Rows[0]["Title"].ToString();
                        dr["Link"] = ds.Tables[0].Rows[0]["Link"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["Gia"] = ds.Tables[0].Rows[0]["Gia"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Gia"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price* quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Tổng tiền";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        String mycon = "Data Source=LAPTOP-MVDPVGDK;Initial Catalog=LTW;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from SanPham where MaSP=" + Request.QueryString["MaSP"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["STT"] = sr + 1;
                        dr["MaSP"] = ds.Tables[0].Rows[0]["MaSP"].ToString();
                        dr["Title"] = ds.Tables[0].Rows[0]["Title"].ToString();
                        dr["Link"] = ds.Tables[0].Rows[0]["Link"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["Gia"] = ds.Tables[0].Rows[0]["Gia"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Gia"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }
            }
        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while ( i < nrow )
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
                i = i +1;
            }
            return gtotal;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <=dt.Rows.Count - 1; i++)
            {
                int sr;
                int srl;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["STT"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                srl = Convert.ToInt32(qdata);
                if (sr ==srl)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++) 
            {
                dt.Rows[i - 1]["STT"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("AddToCart.aspx");
        }
    }
}