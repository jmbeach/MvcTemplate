<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Mvc" %>
<%@ Import Namespace="System.Web.Routing" %>
<script RunAt="server">
    void Application_Start(object sender, EventArgs e)
    {
        AreaRegistration.RegisterAllAreas();
        RegisterGlobalFilters(GlobalFilters.Filters);
        RegisterRoutes(RouteTable.Routes);
    }
    public bool AllowUser(HttpRequest req)
    {
        return true;
    }
    void Application_End(object sender, EventArgs e)
    {
    }
    void Application_Error(object sender, EventArgs e)
    {
    }
    void Session_Start(object sender, EventArgs e)
    {
    }
    void Session_End(object sender, EventArgs e)
    {
    }
    protected void Application_BeginRequest()
    {
    }
    protected void Application_EndRequest()
    {
    }
    public static void RegisterRoutes(RouteCollection routes)
    {
      routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
      //todo: make this yours
      routes.MapRoute("YOURNAMEHERE", "{controller}/{action}/{id}",
          new { controller = "Home", action="Index", id=UrlParameter.Optional});
    }
    public void RegisterGlobalFilters(GlobalFilterCollection filters)
    {
      filters.Add(new HandleErrorAttribute());
    }
</script>
