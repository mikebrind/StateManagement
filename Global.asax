<%@ Application Language="C#" %>

<script runat="server">

  
    void Application_Start(object sender, EventArgs e) 
    {
        var counter = 1;
        HttpContext.Current.Application["Counter"] = counter;
        HttpContext.Current.Application["ApplicationStart"] = counter;

    }
    
    void Application_BeginRequest(object sender, EventArgs e)
    {
        var counter = (int)HttpContext.Current.Application["Counter"]; 
        counter ++;
        HttpContext.Current.Application["Counter"] = counter;
        HttpContext.Current.Application["BeginRequest"] = counter;
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        var counter = (int)HttpContext.Current.Application["Counter"]; 
        counter ++;
        HttpContext.Current.Application["Counter"] = counter;
        HttpContext.Current.Application["SessionStart"] = counter;

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
