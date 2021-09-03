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
    public partial class TransactionMoney : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GVbind();
            }

        }
        protected void GVbind()
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * FROM Customer", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
            }
        }

        protected void btnTransact_Click(object sender, EventArgs e)
        {
            string connectionString = null;
            SqlConnection con;
            SqlDataAdapter adapter = new SqlDataAdapter();
            string sql = null;
            connectionString = "Data Source = MAHAZAIB; Initial Catalog = BankingManagementSystem; Integrated Security = True";

            con = new SqlConnection(connectionString);
            sql = "Insert into Transfer_Amount values('" + txtSenderID.Text + "', '" + txtReceiverID.Text + "', '" + txtAmount.Text + "')";
            try
            {
                con.Open();
                adapter.InsertCommand = new SqlCommand(sql, con);
                adapter.InsertCommand.ExecuteNonQuery();
                lblMessage.Text = "You are successfully Transfered Amount";
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }

}