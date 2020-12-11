using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

using Newtonsoft.Json;
public partial class _Default : Page
{
    private Product product;
    protected void Page_Load(object sender, EventArgs e)
    {
        var path = Server.MapPath("/data.json");
        var strDat = System.IO.File.ReadAllText(path);
        var data = JsonConvert.DeserializeObject<Product>(strDat);
        product = data;
        
        lblProductTitle.Text = product.Title;

        OptionsFrame.DataSource = data.Images.ToList().Where(i => i.Options != null);
        OptionsFrame.DataBind();

        ImageFrame.DataSource = data.Images.ToList();
        ImageFrame.DataBind();

    }
    protected void OnItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string id = (e.Item.FindControl("hfId") as HiddenField).Value;
            Repeater rptOrders = e.Item.FindControl("OptionItems") as Repeater;
            rptOrders.DataSource = product.Images.Where(i => i.Id == id).FirstOrDefault().Options.Items;
            rptOrders.DataBind();
        }
    }
    protected void OnOptionItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            //HtmlGenericControl link = (e.Item..FindControl("OptionItem") as HtmlGenericControl);
            //rptOrders.DataSource = product.Images.Where(i => i.Id == id).FirstOrDefault().Options.Items;
            //rptOrders.DataBind();
        }
    }
}