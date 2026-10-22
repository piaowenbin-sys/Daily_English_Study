using System.Windows.Forms;
using Microsoft.Web.WebView2.WinForms;

namespace ToeicStudyApp;

internal static class Program
{
    [STAThread]
    static void Main()
    {
        ApplicationConfiguration.Initialize();
        using var form = new Form { Text = "TOEIC Study Dashboard", Width = 1280, Height = 900 };
        var browser = new WebView2 { Dock = DockStyle.Fill };
        form.Controls.Add(browser);
        var html = Path.GetFullPath(Path.Combine(AppContext.BaseDirectory, "toeic_study_dashboard.html"));
        form.Shown += async (_, _) => { await browser.EnsureCoreWebView2Async(); browser.CoreWebView2.PermissionRequested += (_, e) => { if (e.PermissionKind == Microsoft.Web.WebView2.Core.CoreWebView2PermissionKind.Geolocation) e.State = Microsoft.Web.WebView2.Core.CoreWebView2PermissionState.Allow; }; browser.CoreWebView2.Navigate(new Uri(html).AbsoluteUri); };
        Application.Run(form);
    }
}

