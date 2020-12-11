using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{
    public Product()
    {
    }
    public string Title { get; set; }
    public ICollection<VisualizerImage> Images { get; set; }
}