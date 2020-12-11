using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for VisualizerImage
/// </summary>
public class VisualizerImage
{
    public VisualizerImage()
    {
    }
    public string Id { get; set; }
    public string Path { get; set; }
    public int Order { get; set; }
    public VisualizerImageOption Options { get; set; }
}