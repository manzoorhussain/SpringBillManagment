package com.example.interceptor;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import org.apache.struts2.ServletActionContext;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;


/**
 * Created by Folio 9480 on 2/10/2018.
 */
public class PrintUrlInterceptor implements Interceptor {

   // final static Logger logger = Logger.getLogger(PrintUrlInterceptor.class);

    @Override
    public void destroy() {

    }

    @Override
    public void init() {

    }

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {

        ActionContext actionContext = actionInvocation.getInvocationContext();

        final HttpServletRequest request = (HttpServletRequest) actionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        String requestedUrl = request.getRequestURL().toString();

        System.out.println("Request URL--" + requestedUrl);


        return "success";
    }
    }

