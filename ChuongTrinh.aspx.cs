using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_G15
{
    public partial class ChuongTrinh : System.Web.UI.Page
    {
        //public int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session[Global.USERNAME] as string;

            System.Web.UI.HtmlControls.HtmlGenericControl para = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("loguser");
            para.InnerHtml = a;

            if (!IsPostBack)
            {
                // Reset the counter before performing the search
                int i = 0;

                var lstChuongTrinh = Application[BTL_LTW_G15.Global.DANHSACHCHUONGTRINH] as List<Chuongtrinh>;
                //(Server.HtmlEncode(Request.Form["txtChuongtrinh"
                if (Request.Form["txtChuongtrinh"] != null && ! string.IsNullOrWhiteSpace(Request.Form["txtChuongtrinh"]))
                {
                    // Filter programs based on the search term
                    lstChuongTrinh = lstChuongTrinh.FindAll(p => p.Title.IndexOf(Request.Form["txtChuongtrinh"], StringComparison.CurrentCultureIgnoreCase) >= 0);

                    // Count the filtered programs
                    i = lstChuongTrinh.Count;
                }

                // Update the inner text of the ketquatk element with the count
                //ketquatk.Style = "Display: block";
                //ketquatk.Style["display"] = "block";
                //ketquatk.InnerText = "Số chương trình tìm thấy: " + i;
            }

        }


        protected void btnTim_Click(object sender, EventArgs e)
        {
            // Your existing code for counting and updating ketquatk
            //int i = 0;
            //var lstChuongTrinh = Application[BTL_LTW_G15.Global.DANHSACHCHUONGTRINH] as List<Chuongtrinh>;

            //if (Request.Form["txtChuongtrinh"] != null && !string.IsNullOrWhiteSpace(Request.Form["txtChuongtrinh"]))
            //{
            //    // Filter programs based on the search term
            //    lstChuongTrinh = lstChuongTrinh.FindAll(p => p.Title.IndexOf(Request.Form["txtChuongtrinh"], StringComparison.CurrentCultureIgnoreCase) >= 0);

            //    // Count the filtered programs
            //    i = lstChuongTrinh.Count;
            //}
            //ketquatk.Style["display"] = "block";
            //// Update the inner text of the ketquatk element with the count
            //ketquatk.InnerText = "Số chương trình tìm thấy: " + i;

            //// Display ketquatk
            
        }
    }
}