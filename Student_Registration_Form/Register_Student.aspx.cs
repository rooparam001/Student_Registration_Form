using System;
using System.Collections.Generic;
using System.Data;
using Newtonsoft.Json;
using System.Web.UI;

namespace Student_Registration_Form
{
    public partial class Register_Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt;
            Student std = new Student();
            dt = std.getData();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "setDatatest", "javascript:SetMyPage('" + JsonConvert.SerializeObject(dt) + "');", true);
        }

        [System.Web.Services.WebMethod]
        public static string SaveStudent(string fname, string lname, string cls, string roll, string percent)
        {
            int err;
            Student std_cls = new Student();
            err = std_cls.AddStd(fname, lname, cls, roll, percent);
            return JsonConvert.SerializeObject(err);
        }

    }
}