using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ICMS
{
    public partial class Employee : System.Web.UI.Page      //inherited the properties of Page class
    {
        public string Gender { get; internal set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Labelmaintitle.Visible = true;
            Labelmaintitle.Text = "Hello ! welcome to my web app";
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}