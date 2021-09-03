using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace WebApplication3
{
    public partial class ViewCustomer : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GVbind();
            }
            
        }
        protected void GVbind()
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using(SqlConnection con= new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * FROM Customer", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows==true)
                {
                    GridView2.DataSource = dr;
                    GridView2.DataBind();
                }
            }
        }
    }
}

