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

public partial class _Default : System.Web.UI.Page
{
    StringBuilder seleccion = new StringBuilder("");
    int costoTotal = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        //No se usa por el momento
    }

    protected void tiposMasa_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            //Copiando  el estring especifico al Stringbuilder, sin borrar lo que ya contenia
            //Y agregando el tipo de masa sellecionado
            seleccion.Append("Tipo de Masa: ");
            seleccion.Append(tiposMasa.SelectedItem.Text + " ");
            //Obtiene el HttpSessionState instanciado de la solicitud actual
            Session["seleccion"] = seleccion;
            //Agregando el costo
            costoTotal = costoTotal + Convert.ToInt32(tiposMasa.SelectedItem.Value);
            Session["costoTotal"] = costoTotal;
            //Agregando el string de la masa selecionada a la parte visual, así como el costo total
            literalSeleccionActual.Text = seleccion.ToString();
            txtTotal.Text = costoTotal.ToString();
        }
        catch (Exception)
        {
            //Mensaje de error si no hay ningun tipo de masa seleccionada
            string error = "Lo sentimos ha ocurrido un error, estamos trabajando para solucionarlo.";
            ClientScript.RegisterStartupScript(this.GetType(), "Mi Alerta", "alert('" + error + "');", true);
        }
    }

    protected void listaIngredientes_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            //Copiando  el estring especifico al Stringbuilder, sin borrar lo que ya contenia
            //Y agregando el tipo de masa sellecionado
            seleccion.Append(Session["seleccion"].ToString());
            seleccion.Append("; Ingredientes: ");
            seleccion.Append(listaIngredientes.SelectedItem.Text + " ");
            //agregando el costo de los ingredientes al ya modificado costo total
            costoTotal = Convert.ToInt32(Session["costoTotal"]);
            costoTotal = costoTotal + Convert.ToInt32(listaIngredientes.SelectedItem.Value);
            //Agregando el string de la masa selecionada a la parte visual, así como el costo total
            literalSeleccionActual.Text = seleccion.ToString();
            txtTotal.Text = costoTotal.ToString();
            //Obtiene el HttpSessionState instanciado de la solicitud actual
            Session["seleccion"] = seleccion;
            Session["costoTotal"] = costoTotal;
        }
        catch (Exception)
        {
            //Mensaje de error si no hay nongun tipo de ingrediente seleccionado
            string error = "Lo sentimos ha ocurrido un error, estamos trabajando para solucionarlo.";
            ClientScript.RegisterStartupScript(this.GetType(), "Mi Alerta", "alert('" + error + "');", true);
        }
    }

    protected void lnkCheckout_Click(object sender, EventArgs e)
    {
        Session["seleccion"] = literalSeleccionActual.Text;
        Session["costo"] = txtTotal.Text;
        //Metodo que redirige al cliente a una pagina con URL diferente
        Response.Redirect("Checkout.aspx");
    }

    protected void lnkContactos_Click(object sender, EventArgs e)
    {
        //Metodo que redirige al cliente a una pagina con URL diferente
        Response.Redirect("Contactos.aspx");
    }
}