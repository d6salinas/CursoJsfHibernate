
package com.jonathan.curso1.util;

import com.jonathan.curso1.bean.Usuario;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

/**
 *
 * @author alumnos
 */
public class HibernateUtil {

    private static SessionFactory factory = null;

    public static Session getSession()
    {
        if(factory==null)
        {
            factory = getInitializedConfiguration().buildSessionFactory();
        }
        return factory.getCurrentSession();
    }

    public static void closeSession()
    {
        getSession().close();
    }

    private static void createTables()
    {
        new SchemaExport(getInitializedConfiguration()).create(true, true);
    }

    public static Configuration getInitializedConfiguration()
    {
        AnnotationConfiguration config = new AnnotationConfiguration();
        config.addAnnotatedClass(Usuario.class);
        config.configure();
        return config;
    }

    public static Session beginTransaction()
    {
        Session session = getSession();
        getSession().beginTransaction();
        return session;
    }

    public static void commit()
    {
        getSession().getTransaction().commit();
    }

    public static void main(String[] args) {
//        createTables();   //comentar o descomentar segun se requiera

    }
}
