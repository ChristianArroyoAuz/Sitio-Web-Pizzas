<!--
// ******************************************************************************************
// Arroyo Auz Christian Xavier.                                                             *
// 15/07/2016.                                                                              *
// ******************************************************************************************-->

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Titulo de la pagina web-->
    <title>La Pizzeria Aplica  </title>
    <!-- Estilos de colores y letras, asi como el backgroud usado-->
    <style type="text/css">
        .newStyle1 {
            background-image: url('Recursos/Fondo.jpg');
        }

        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="formPizzeria" runat="server" class="newStyle1">
        <!-- Logotipo de inicio y lema-->
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenPizza" runat="server" ImageUrl="~/Recursos/Pizzeria.png" Height="224px" Width="285px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenLema" runat="server" Height="110px" ImageUrl="~/Recursos/Lema.png" Width="1326px" />
        </div>
        <br />
        <br />
        <!--Carga de imagenes en los respectivos cuadors de imagens-->
        <asp:Panel ID="panelTipoMasa" runat="server" Height="361px" Width="1326px" GroupingText="Escoja la masa de su gusto:" BackColor="Transparent" CssClass="auto-style1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenDelgada" runat="server" ImageUrl="~/Recursos/Delgada.jpg" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenCrispy" runat="server" ImageUrl="~/Recursos/Crispy.jpg" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenGruesa" runat="server" ImageUrl="~/Recursos/Gruesa.jpg" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenChocolate" runat="server" ImageUrl="~/Recursos/Chocolate.jpg" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenRelleno" runat="server" ImageUrl="~/Recursos/Relleno.JPG" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelDelgada" runat="server" Text="Masa Delgada."></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelCrispy" runat="server" Text="Masa Crispy."></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelGruesa" runat="server" Text="Masa Gruesa."></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelChocolate" runat="server" Text="Masa de Chocholate."></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelSalchicha" runat="server" Text="Bordes Rellenos."></asp:Label>
            <br />
            <!--Creacion de la lista de radiobuttons-->
            <asp:RadioButtonList ID="tiposMasa" runat="server" AutoPostBack="True" CssClass="auto-style2" OnSelectedIndexChanged="tiposMasa_SelectedIndexChanged">
                <asp:ListItem Value="5">Delgada - 5$.</asp:ListItem>
                <asp:ListItem Value="8">Crispy - 8$.</asp:ListItem>
                <asp:ListItem Value="10">Gruesa - 10$.</asp:ListItem>
                <asp:ListItem Value="15">Chocolate - 15$.</asp:ListItem>
                <asp:ListItem Value="12">Rellena - 12$.</asp:ListItem>
            </asp:RadioButtonList>
        </asp:Panel>
        <br />
        <br />
        <!--Agregando las imagenes de los ingredientes-->
        <asp:Panel ID="panelIngredientes" runat="server" GroupingText="Escoja los ingredientes preferidos:" Width="1326px" BackColor="Transparent">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenChampiñones" runat="server" ImageUrl="~/Recursos/Champiñones.jpg" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenPepperoni" runat="server" ImageUrl="~/Recursos/Pepperoni.jpg" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenSalchichas" runat="server" ImageUrl="~/Recursos/Salchicha.jpg" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagePimintos" runat="server" ImageUrl="~/Recursos/Pimientos.jpg" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenJamon" runat="server" ImageUrl="~/Recursos/Jamon.jpg" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelChampiñones" runat="server" Text="Champiñones."></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelPeperoni" runat="server" Text="Peperoni."></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelSalchichas" runat="server" Text="Salchichas."></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelPimientos" runat="server" Text="Pimientos."></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelJamon" runat="server" Text="Jamon"></asp:Label>
            <br />
            <!--Creacion de la lista de checkbox para los ingredientes-->
            <asp:CheckBoxList ID="listaIngredientes" runat="server" AutoPostBack="True" CssClass="auto-style2" OnSelectedIndexChanged="listaIngredientes_SelectedIndexChanged">
                <asp:ListItem Value="4">Champiñones - 4$.</asp:ListItem>
                <asp:ListItem Value="5">Peperoni - 5$.</asp:ListItem>
                <asp:ListItem Value="6">Salchichas - 6$.</asp:ListItem>
                <asp:ListItem Value="3">Pimientos - 3$.</asp:ListItem>
                <asp:ListItem Value="2">Jamon - 2$.</asp:ListItem>
            </asp:CheckBoxList>
        </asp:Panel>
        <br />
        <br />
        <!--Iten para mostrar los elementos seleccionados-->
        <asp:Panel ID="PanelSeleccionados" runat="server" GroupingText="Los ingredientes seleccionados son:" Height="48px" Width="1326px" BackColor="Transparent">
            <asp:Literal ID="literalSeleccionActual" runat="server"></asp:Literal>
        </asp:Panel>
        <br />
        <br />
        <!--Textbox para mostrar los costos-->
        <asp:Panel ID="PanelCosto" runat="server" GroupingText="El costo de su pizza es:" Width="1326px" Height="48px" BackColor="Transparent">
            <asp:TextBox ID="txtTotal" runat="server" ReadOnly="True" Width="155px" BackColor="Transparent"></asp:TextBox>
        </asp:Panel>
        <br />
        <br />
        <!--link para cambiar de pagiina-->
        <asp:Panel ID="PanelCambio" runat="server" Width="1326px" Height="48px" GroupingText="Ir a CheckOut:" BackColor="Transparent">
            <asp:LinkButton ID="lnkCheckout" runat="server" OnClick="lnkCheckout_Click">Ir a CheckOut...</asp:LinkButton>
        </asp:Panel>
        <br />
        <br />
        <!--link para cambiar de pagina-->
        <asp:Panel ID="PanelContactos" runat="server" Width="1326px" Height="48px" GroupingText="Contactanos:">
            <asp:LinkButton ID="lnkContactos" runat="server" OnClick="lnkContactos_Click">Contactos...</asp:LinkButton>
        </asp:Panel>
    </form>
</body>
</html>