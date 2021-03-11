using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NOVO_USUÁRIO.DAL
{
    public class usuarioDAL
    {
        public tabUsuario consultarUsuarioPorEmail(string email)
        {
            using (novoUsuarioEntities ctx = new novoUsuarioEntities())
            {
                return ctx.tabUsuario.Where(c => c.Email == email).FirstOrDefault();
            }
        }

        public void cadastrarUsuario(tabUsuario objU)
        {
            using (novoUsuarioEntities ctx = new novoUsuarioEntities())
            {
                ctx.tabUsuario.Add(objU);
                ctx.SaveChanges();
            }
        }
    }
}