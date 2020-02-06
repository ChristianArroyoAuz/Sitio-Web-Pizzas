<!--
// ******************************************************************************************
// Arroyo Auz Christian Xavier.                                                             *
// 15/07/2016.                                                                              *
// ******************************************************************************************-->

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Titulo de la pagina-->
    <title>Tu Orden! </title>
    <!--Estilos usados y carga del background-->
    <style type="text/css">
        .newStyle1 {
            background-image: url('Recursos/Fondo.jpg');
        }

        .auto-style1 {
            height: 319px;
        }
    </style>
</head>
<body class="newStyle1">
    <form id="form1" runat="server" class="auto-style1">
        <!--Logotipo y lema de la empresa-->
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenPizza" runat="server" ImageUrl="~/Recursos/Pizzeria.png" Height="224px" Width="285px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagenLema" runat="server" Height="110px" ImageUrl="~/Recursos/Lema.png" Width="1326px" />
        </div>
        <br />
        <br />
        <!--Literal para la muestra de los datos-->
        <asp:Panel ID="PanelSeleccion" runat="server" GroupingText="Tu selección para la pizza es:" BackColor="Transparent" Height="48px" Width="1326px">
            <asp:Literal ID="literalSeleccion" runat="server"></asp:Literal>
        </asp:Panel>
        <br />
        <br />
        <!--Textox para mostrar el costo-->
        <asp:Panel ID="PanelCosto" runat="server" GroupingText="El costo de tu pizza es:" BackColor="Transparent" Height="48px" Width="1326px">
            <asp:TextBox ID="txtCosto" runat="server" Width="177px" BackColor="Transparent" ReadOnly="True"></asp:TextBox>
        </asp:Panel>
        <br />
        <br />
        <!--Link para volver a la pagina principal-->
        <asp:Panel ID="PanelVolver" runat="server" BackColor="Transparent" GroupingText="Volver a la pagina principal:" Height="48px" Width="1326px">
            <asp:LinkButton ID="linkVolver" runat="server" OnClick="linkVolver_Click">Volver al Inicio</asp:LinkButton>
        </asp:Panel>
        <br />
        <br />
        <!--Link para ir a la pagina de contactos-->
        <asp:Panel ID="PanelContactos" runat="server" BackColor="Transparent" GroupingText="Contactanos:" Height="48px" Width="1326px">
            <asp:LinkButton ID="linkContactos" runat="server" OnClick="linkContactos_Click">Contactanos...</asp:LinkButton>
        </asp:Panel>
        <br />
        <br />
        Gracias por tu adquisición... Vuelve pronto!
    </form>
</body>
</html>