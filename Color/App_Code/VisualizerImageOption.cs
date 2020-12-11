using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for VisualizerImageOption
/// </summary>
public class VisualizerImageOption
{
    public VisualizerImageOption()
    {
        Items = new List<VisualizerImageOptionItem>();
    }
    public string Title { get; set; }
    public ICollection<VisualizerImageOptionItem> Items { get; set; }
}