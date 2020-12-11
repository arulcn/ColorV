using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Color.Startup))]
namespace Color
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
