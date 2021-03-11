<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadUsuario.aspx.cs" Inherits="NOVO_USUÁRIO.cadUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro de Usuários</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Cadastro de Usuários</h1>
            <br />
            <label>Nome:</label>
            <br />
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />

            <label>CEP:</label>
            <br />
            <asp:TextBox ID="txtCEP" runat="server"></asp:TextBox>
            <asp:Button ID="btnConsultarCEP" runat="server" Text="Consultar CEP" OnClick="btnConsultarCEP_Click"/>
            <br />
            
            <label>Endereço:</label>
            <br />
            <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
            <br />
            <label>bairro:</label>
            <br />
            <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
            <br />
            <label>Cidade:</label>
            <br />
            <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
            <br />
            <label>UF:</label>
            <br />
            <asp:TextBox ID="txtUF" runat="server"></asp:TextBox>
            <br />
            <label>E-mail:</label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            <label>Senha:</label>
            <br />
            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
            <br /><br />

            <asp:FileUpload ID="fupFoto" runat="server" />
            <br /> <br />
            
            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
            <asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click"/>
            <br />

            <asp:GridView ID="gridUsuario" runat="server"></asp:GridView>

        </div>
    </form>
</body>
</html>
