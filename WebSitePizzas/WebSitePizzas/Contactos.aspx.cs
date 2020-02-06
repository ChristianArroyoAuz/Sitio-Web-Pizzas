// ******************************************************************************************
// Arroyo Auz Christian Xavier.                                                             *
// 15/07/2016.                                                                              *
// ******************************************************************************************


using System.Collections.Generic;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Text;
using System.Linq;
using System.Web;
using System;

public partial class Contactos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //No se hace nada por el momento
    }
    protected void linkVolver_Click(object sender, EventArgs e)
    {
        //Metodo que redirige al cliente a una pagina con URL diferente
        Response.Redirect("Default.aspx");
    }
}