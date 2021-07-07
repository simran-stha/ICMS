using ICMS.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ICMS
{
    //public readonly EmployeeBLL objEmployeeBLL;
    //EmployeeBLL objEmployeeBLL = new EmployeeBLL();

    public partial class EmployeeCollection : System.Web.UI.Page
    {
        public EmployeeBLL _employeeBLL;
        public SqlConnection _conn;
        public EmployeeCollection()
        {
            _employeeBLL = new EmployeeBLL();
            _conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ICMSwebConnectionString"].ConnectionString);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                RefreshEmployeeList();
            }
        }

        public void RefreshEmployeeList()
        {
            //new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);
            SqlConnection conn = new SqlConnection(@"Data Source=Simran;
                        initial catalog=ICMS;persist security info=True;
                          MultipleActiveResultSets=True");
            SqlCommand cmd = new SqlCommand("SELECT * from Employee where Gender ='male'", _conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            EmployeeGridView.DataSource = ds;
            EmployeeGridView.DataBind();
        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            try
            {
                EmployeeBLL _empBLL = new EmployeeBLL();

                var data = _empBLL.GetAllActiveEmployee();
                if (data.Count() > 0)
                {
                    EmployeeGridView.DataSource = data;
                    EmployeeGridView.DataBind();
                }

                else
                {

                    ShowAlert("No Records found");
                }
            }
            catch (Exception ex)
            {
                ShowAlert(ex.Message.ToString());
            }
        }

        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }

    }
}

