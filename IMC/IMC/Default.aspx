<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IMC.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title>Calculadora de IMC</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--container--%>
            <div class="container">
                <div class="col-row-12 text-center">
                    <h1>Calculadora de IMC</h1>
                </div>

                <hr />

                <div class="row">
                    <div class="col-row-2">
                        <label>informe sua altura:</label>
                        <asp:RequiredFieldValidator ID="rfvAltura" ControlToValidate="txtAltura"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtAltura" runat="server" placeholder="cm" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-row-2" style="padding-top: 10px">
                        <label>informe seu peso:</label>
                        <asp:RequiredFieldValidator ID="rfvPeso" ControlToValidate="txtPeso"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtPeso" runat="server" placeholder="Kg" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-row-12" style="padding-top: 20px">
                    <asp:Button ID="btnCalc" runat="server" Text="Calcular" CssClass="btn-primary" />
                </div>
                <div class="col-row-12" style="padding-top: 20px">
                    <asp:Label ID="lblResu" runat="server" Text=""></asp:Label>
                </div>

                <hr />

            </div>
            <%--container--%>
        </div>
    </form>
</body>
</html>
