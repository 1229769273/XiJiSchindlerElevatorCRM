/*
 * WARNING: DO NOT EDIT THIS FILE. This is a generated file that is synchronized
 * by MyEclipse Hibernate tool integration.
 *
 * Created Wed Nov 16 16:01:55 CST 2005 by MyEclipse Hibernate Tool.
 */
package com.gzunicorn.hibernate.viewmanager;

import java.io.Serializable;

/**
 * A class that represents a row in the ViewUserAllowFlag table. 
 * You can customize the behavior of this class by editing the class, {@link Viewuserallowflag()}.
 * WARNING: DO NOT EDIT THIS FILE. This is a generated file that is synchronized * by MyEclipse Hibernate tool integration.
 */
public abstract class AbstractViewuserallowflag 
    implements Serializable
{

    /** The value of the simple userid property. */
    private java.lang.String userid;

    /** The value of the simple username property. */
    private java.lang.String username;

    /**
     * Simple constructor of AbstractViewuserallowflag instances.
     */
    public AbstractViewuserallowflag()
    {
    }

    /**
     * Return the value of the UserID column.
     * @return java.lang.String
     */
    public java.lang.String getUserid()
    {
        return this.userid;
    }

    /**
     * Set the value of the UserID column.
     * @param userid
     */
    public void setUserid(java.lang.String userid)
    {
        this.userid = userid;
    }

    /**
     * Return the value of the UserName column.
     * @return java.lang.String
     */
    public java.lang.String getUsername()
    {
        return this.username;
    }

    /**
     * Set the value of the UserName column.
     * @param username
     */
    public void setUsername(java.lang.String username)
    {
        this.username = username;
    }
}
