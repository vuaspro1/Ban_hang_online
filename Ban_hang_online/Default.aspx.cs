using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ban_hang_online
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["Username"] != null)
            {

            }
            else
            {
                Response.Redirect("Login.aspx");

            }*/
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                DropDownList dlist = (DropDownList)(e.Item.FindControl("drl_SoLuong"));
                Response.Redirect("AddToCart.aspx?MaSP=" + e.CommandArgument.ToString()+ "&quantity="+dlist.SelectedItem.ToString());
            }
        }


    }
}