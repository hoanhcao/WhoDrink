using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(whodrink.service.Startup))]
namespace whodrink.service
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
