using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for VisualizerImageOptionItem
/// </summary>
public class VisualizerImageOptionItem
{
    public VisualizerImageOptionItem()
    {
    }
    public string Id { get; set; }
    public string LabelText { get; set; }
    public string LabelColor { get; set; }
    public string LabelImage { get; set; }
    public string ValueImage { get; set; }
    public string Background
    {
        get
        {
            if (string.IsNullOrEmpty(LabelImage))
                return LabelColor;
            return string.Format("url({0})", LabelImage);
        }
    }
}