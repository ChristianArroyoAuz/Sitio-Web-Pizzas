<!--
// ******************************************************************************************
// Arroyo Auz Christian Xavier.                                                             *
// 15/07/2016.                                                                              *
// ******************************************************************************************-->

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contactos.aspx.cs" Inherits="Contactos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Titulo de la pagina-->
    <title>Contactos</title>
    <!--Estilos usados en las etiquetas de presentacion-->
    <style type="text/css">
        .newStyle1 {
            background-image: url('Recursos/Fondo.jpg');
        }

        .auto-style1 {
            font-size: xx-large;
            color: #000099;
        }

        .auto-style3 {
            font-size: x-large;
            color: #000099;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="newStyle1">
        <!--Carga de logotipo y lema-->
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenPizza" runat="server" ImageUrl="~/Recursos/Pizzeria.png" Height="224px" Width="285px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenLema" runat="server" Height="110px" ImageUrl="~/Recursos/Lema.png" Width="1326px" />
            <br />
            <br />
        </div>
        <!--Etiquetas de informacion de usuario-->
        <asp:Label ID="Label1" runat="server" Text="Propietario: Christian Arroyo." CssClass="auto-style1"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Direccion: Av. Principal y la que Cruza." CssClass="auto-style3"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Telefonos: 09987654321" CssClass="auto-style3"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Correo Electronico: aplicapizza@mazinger.com" CssClass="auto-style3"></asp:Label>
        <br />
        <br />
        <!--link para cambio de agina-->
        <asp:Panel ID="PanelVolver" runat="server" BackColor="Transparent" GroupingText="Volver a la pagina principal:" Height="48px" Width="1326px">
            <asp:LinkButton ID="linkVolver" runat="server" OnClick="linkVolver_Click">Volver al Inicio</asp:LinkButton>
        </asp:Panel>
        <br />
        <br />
    </form>
</body>
</html>