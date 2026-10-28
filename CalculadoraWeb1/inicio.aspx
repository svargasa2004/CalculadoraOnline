<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="CalculadoraWeb1.inicio" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mi Calculadora</title>

    <style>
        body {
            background-color: #dce8ff;
            font-family: Arial;
            text-align: center;
        }

        .contenedor {
            background-color: white;
            width: 400px;
            margin: 50px auto;
            padding: 25px;
            border-radius: 20px;
            border-top: 6px solid #c1121f;
        }

        h1 {
            color: #1d3557;
        }

        h3 {
            color: #c1121f;
        }

        .campo {
            padding: 10px;
            border: 1px solid #6c8ebf;
            border-radius: 8px;
        }

        .btn {
            background-color: #457b9d;
            color: white;
            border: none;
            padding: 10px;
            margin: 5px;
            border-radius: 8px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #e63946;
        }

        .resultado {
            color: #c1121f;
            font-size: 22px;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="contenedor">

            <h1>Calculadora</h1>
            <p>Ayudandote con matemáticas</p>

            <p>
                <asp:Label ID="lnum1" runat="server"
                    Text="Número 1: "></asp:Label>

                <asp:TextBox ID="tnum1" runat="server"
                    CssClass="campo"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="lnum2" runat="server"
                    Text="Número 2: "></asp:Label>

                <asp:TextBox ID="tnum2" runat="server"
                    CssClass="campo"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="ltexto" runat="server"
                    Text="Resultado: "></asp:Label>

                <asp:Label ID="lresultado" runat="server"
                    Text="0" CssClass="resultado"></asp:Label>
            </p>

            <hr />

            <h3>Operaciones básicas</h3>

            <asp:Button ID="bsuma" runat="server"
                Text="Sumar (+)" CssClass="btn"
                OnClick="bsuma_Click" />

            <asp:Button ID="bresta" runat="server"
                Text="Restar (-)" CssClass="btn"
                OnClick="bresta_Click" />

            <asp:Button ID="bmulti" runat="server"
                Text="Multiplicar (*)" CssClass="btn"
                OnClick="bmulti_Click" />

            <asp:Button ID="bdivi" runat="server"
                Text="Dividir (/)" CssClass="btn"
                OnClick="bdivi_Click" />

            <h3>Otras operaciones</h3>

            <asp:Button ID="bpot2" runat="server"
                Text="Potencia 2" CssClass="btn"
                OnClick="bpot2_Click" />

            <asp:Button ID="bexp" runat="server"
                Text="Exp" CssClass="btn"
                OnClick="bexp_Click" />

            <asp:Button ID="b10x" runat="server"
                Text="10 elevado a x" CssClass="btn"
                OnClick="b10x_Click" />

        </div>

    </form>
</body>
</html>