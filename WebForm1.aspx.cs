using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_G15
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (banner.PostedFile != null && banner.PostedFile.ContentLength > 0 && image.PostedFile != null && image.PostedFile.ContentLength > 0)
            {
                try
                {
                    // Tạo thư mục lưu trữ file nếu chưa tồn tại
                    string uploadFolderPath = Server.MapPath("~/UploadFiles/");
                    if (!Directory.Exists(uploadFolderPath))
                    {
                        Directory.CreateDirectory(uploadFolderPath);
                    }

                    // Lấy thông tin file
                    string fileName = Path.GetFileName(banner.PostedFile.FileName);
                    string filePath = Path.Combine(uploadFolderPath, fileName);

                    string fileName2 = Path.GetFileName(image.PostedFile.FileName);
                    string filePath2 = Path.Combine(uploadFolderPath, fileName2);

                    // Lưu file vào thư mục
                    banner.PostedFile.SaveAs(filePath);
                    image.PostedFile.SaveAs(filePath2);

                    int id = 10;
                    Chuongtrinh ctr = new Chuongtrinh();
                    ctr.ID = id;
                    ctr.Title = Request.Form["title"].ToString();
                    ctr.MST = Request.Form["mst"].ToString();
                    ctr.Content = Request.Form["content"].ToString();
                    ctr.BannerUrl = "UploadFiles/"+fileName;
                    ctr.ImageUrl = "UploadFiles/" + fileName2;

                    var a = Application[Global.DANHSACHCHUONGTRINH] as List<Chuongtrinh>;
                    a.Add(ctr);
                    Application[Global.DANHSACHCHUONGTRINH] = a;
                    Response.Redirect("ChuongTrinh.aspx");

                    // Hiển thị đường dẫn của file
                    Response.Write($"File đã được tải lên thành công. Đường dẫn: {ctr.ImageUrl}");
                    Response.Write($"File đã được tải lên thành công. Đường dẫn: {ctr.BannerUrl}");
                }
                catch (Exception ex)
                {
                    Response.Write($"Đã xảy ra lỗi: {ex.Message}");
                }
            }
            else
            {
                Response.Write("Vui lòng chọn một file để tải lên.");
            }


        }
    }
}