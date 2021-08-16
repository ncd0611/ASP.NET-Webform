using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TinTuc
{
    public partial class TrangChu1 : System.Web.UI.Page
    {
        DataDataContext dt = new DataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            rpChiTiet.DataSource = dt.ChiTiet_SelecHome();
            rpChiTiet.DataBind();
        }
    }
}