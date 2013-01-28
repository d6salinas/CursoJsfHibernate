package com.jonathan.curso1.dao;

import com.jonathan.curso1.bean.Usuario;
import java.util.ArrayList;
import javax.faces.component.html.HtmlDataTable;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

/**
 *
 * @author dsalinas
 */
public class Auxiliar{

    private HtmlDataTable model;

    public void eliminar(ActionEvent evt)
    {
        UsuarioDAO usuariodao = new UsuarioDAO();
        ArrayList<Usuario> usuarios = (ArrayList<Usuario>) usuariodao.consultarUsuarios();
        Usuario usuarioAEliminar = usuarios.get(model.getRowIndex());
        usuarios.remove(usuarioAEliminar);
    }

    /**
     * @return the model
     */
    public HtmlDataTable getModel() {
        return model;
    }

    /**
     * @param model the model to set
     */
    public void setModel(HtmlDataTable model) {
        this.model = model;
    }
}
