
package com.jonathan.curso1.dao;

import com.jonathan.curso1.bean.Usuario;
import com.jonathan.curso1.util.HibernateUtil;
import java.util.List;
import javax.faces.context.FacesContext;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 * 
 * @author eleadrn
 */
public class UsuarioDAO {
    
    Usuario usuario;

    public UsuarioDAO(){
        usuario = new Usuario();
    }

    public String registrarUsuario() {
        try {
//            Session session = HibernateUtil.getSession();
            Session session = HibernateUtil.beginTransaction();
            usuario = (Usuario) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("registrar");
            session.save(usuario);
            HibernateUtil.commit();
            return "Exito";
        } catch (Exception e) {
            return "Fallo";
        }
    }

    public Usuario consultarUsuario(String usuario, String password)
    {
        try {
            Usuario user = new Usuario();
            //consulta usuario
            Session session = HibernateUtil.beginTransaction();
            user = (Usuario) session.createQuery("from Usuario where usuario='"+usuario+"' and contraseña='"+password+"'").uniqueResult();
            //intentando hacer la consulta con el API de Criteria
//            Criteria criteria = session.createCriteria(Usuario.class);
//            criteria.add(Restrictions.eq("usuario", usuario));
//            criteria.add(Restrictions.eq("contraseña", password));
//            user = (Usuario) criteria.uniqueResult();
            HibernateUtil.commit();
            return user;
        } catch (Exception e) {
            return null;
        }
    }

    public Boolean existeUsuario(Usuario usuario)
    {
        if (usuario != null)
            return true;
        return false;
    }

    public String cerrarSesion(){
        try{
            this.usuario = new Usuario();
            FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("registrar", usuario);
            return "Cerrado";
        } catch (Exception e) {
            return "Abierto";
        }

    }

    public String validarUsuario()
    {
        try
        {
            //se obtienen los datos del usuario entrados en el formulario dela pagina
            usuario = (Usuario) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("registrar");
            //se consulta a la BD el usuario detallado en el formulario de la pagina
            Usuario user = consultarUsuario(this.usuario.getUsuario(), this.usuario.getContraseña());
            //guardo datos antes de consultar a la BD son de la pagina
            String usuariodet = this.usuario.getUsuario();
            String passworddet = this.usuario.getContraseña();
            //se valida si ese usuario existe
//            if (existeUsuario(usuario))//original pero debe de ser
            if (existeUsuario(user))
            {
                if (this.usuario.getUsuario().equals(usuariodet) && this.usuario.getContraseña().equals(passworddet))
                {
//                    usuario = (Usuario) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("registrar");
                    this.usuario = user;
                    FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("registrar", usuario);
                    
                    return "LoginSuccess";
                }
            }
            return "LoginFail";
        } catch (Exception e) {
            return "error";
        }
    }

    public List<Usuario> consultarUsuarios() {
//        Session session = HibernateUtil.getSession();
        Session session = HibernateUtil.beginTransaction();         //

        List<Usuario> usuariosq = session.createQuery("from Usuario").list();
        
//        for (Usuario usuariosc : usuariosq){
        /////////////////
//        Usuario usuariosc = new Usuario();
//        for (int i=0; i<usuariosq.size(); i++){
//            usuariosc.setContraseña(usuariosq.get(i).getContraseña());
//            usuariosc.setCorreo(usuariosq.get(i).getCorreo());
//            usuariosc.setDomicilio(usuariosq.get(i).getDomicilio());
//            usuariosc.setEdad(usuariosq.get(i).getEdad());
//            usuariosc.setNombre(usuariosq.get(i).getNombre());
//            usuariosc.setUsuario(usuariosq.get(i).getUsuario());
//        }
        ///////////////

        HibernateUtil.commit();
//        for (Usuario usuario : usuarios){
//              System.out.println(usuario.getNombre());
//        }
        
        return usuariosq;
    }

//    public static void main(String[] args) {
//        consultarUsuarios();
//    }

}
