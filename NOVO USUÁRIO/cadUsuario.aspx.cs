using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NOVO_USUÁRIO
{
    public partial class cadUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

        }

        protected void btnConsultarCEP_Click(object sender, EventArgs e)
        {
            try
            {
                using (var ws = new wsCorreios.AtendeClienteService())
                {
                    var resultado = ws.consultaCEP(txtCEP.Text);

                    txtEndereco.Text = resultado.end;
                    txtBairro.Text = resultado.bairro;
                    txtCidade.Text = resultado.cidade;
                    txtUF.Text = resultado.uf;
                }
            }
            catch (Exception ex)
            {
                ExibirMensagem(ex.Message);
            }
        }
        public void ExibirMensagem(string msg)
        {
            Response.Write("<script>alert('" + msg + "')</script>");
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {

        }
    }
}