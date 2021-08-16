using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TinTuc
{
    public partial class TrangChu : System.Web.UI.MasterPage
    {
        DataDataContext dt = new DataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                rpBanTin.DataSource = dt.BanTin_SelectAll();
                rpBanTin.DataBind();
            }    
        }
    }
}