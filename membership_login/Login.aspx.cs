using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MemberShipProvider;
using System.Configuration;
using MySql.Data.MySqlClient;
using MySql.Web;

namespace membership_login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DbTest();
        }

        private void MemberShipTest() 
        {
            string ret = "wrong";
            MyMemberShipProvider provider = new MyMemberShipProvider();
            if (provider == null)
            {
                ret = "is null";
            }
            else
            {
                ret = "not null";
            }
        }

        private void DbTest() 
        {
            ConnectionStringSettings ConnectionStringSettings 
                = ConfigurationManager.ConnectionStrings["MySqlConnection"];
            string myConnectionString = ConnectionStringSettings.ConnectionString;

            try
            {
                MySqlConnection conn = new MySqlConnection();
                conn.ConnectionString = myConnectionString;
                conn.Open();
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                string strError = ex.Message;
            }
        }
    }
}