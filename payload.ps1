$code = @"
using System.IO;
using System.Windows.Forms;
using System.Net;

namespace powershell
{
    static class Program
    {
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            string url = "https://github.com/Pa-Ka/ckwwlaktpdywpqkffy/raw/master/gift.png";
            var webClient = new WebClient();
            webClient.Headers[HttpRequestHeader.UserAgent] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163";
            Stream ImageStream = webClient.OpenRead(url);
            Image tmp = Image.FromStream(ImageStream);

            Form form = new Form();
            form.Text = "Image Viewer";
            form.Width = tmp.Size.Width + 10;
            form.Height = tmp.Size.Height;
            PictureBox picture = new PictureBox();
            picture.Width = tmp.Size.Width;
            picture.Height = tmp.Size.Height;
            picture.Image = tmp;
            form.Controls.Add(picture);

            form.Activate();
            form.ShowDialog();
        }
    }
}
"@
 
Add-Type -TypeDefinition $code -Language CSharp	
iex "[powershell.Program]::Main()"
