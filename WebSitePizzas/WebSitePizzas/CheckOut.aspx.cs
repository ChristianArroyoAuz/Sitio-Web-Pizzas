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

public partial class CheckOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Cargando los datos recibidos de la pagina principal mediante el uso de la Session
        literalSeleccion.Text = (String)Session["seleccion"];
        txtCosto.Text = (String)Session["costo"];
    }
    protected void linkVolver_Click(object sender, EventArgs e)
    {
        //Metodo que redirige al cliente a una pagina con URL diferente
        Response.Redirect("Default.aspx");
    }

    protected void linkContactos_Click(object sender, EventArgs e)
    {
        //Metodo que redirige al cliente a una pagina con URL diferente
        Response.Redirect("Contactos.aspx");
    }
}