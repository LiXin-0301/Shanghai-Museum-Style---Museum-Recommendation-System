package com.museum.springboot.exception;

import org.apache.ibatis.jdbc.RuntimeSqlException;

public class ServiceException extends RuntimeSqlException {

    public ServiceException(String msg){
        super(msg);
    }
}

