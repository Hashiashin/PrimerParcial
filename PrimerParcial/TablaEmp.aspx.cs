using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimerParcial
{
    public partial class TablaEmp : System.Web.UI.Page
    {


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource1.FilterExpression = "idSector = " + DropDownList1.SelectedValue;
            GridView1.DataBind();
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            
              SqlDataSource1.FilterExpression = String.Empty;
              GridView1.DataBind();
        }


    }
}