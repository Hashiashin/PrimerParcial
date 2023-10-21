using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimerParcial
{
    public partial class Empleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) || DropDownList1.SelectedValue == "" || string.IsNullOrWhiteSpace(TextBox2.Text))
            {

                Label1.Text = "Complete los Campos.";

            }
            else
            {

                int result = SqlDataSource2.Insert();
                if (result != 0)
                {
                    Label1.Text = "Se ha agregado " + result.ToString() + " Empleado.";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
                else
                {
                    Label1.Text = "No se Agrego Empleado.";


                }

            }
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TablaEmp.aspx");
        }
    }
}