using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Ban_hang_online.Startup))]
namespace Ban_hang_online
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
