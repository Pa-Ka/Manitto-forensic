# Loosely based on http://www.vistax64.com/powershell/202216-display-image-powershell.html

[void][reflection.assembly]::LoadWithPartialName("System.Windows.Forms")
#$file = (get-item $online)
#$file = (get-item "c:\image.jpg")
$url = "https://github.com/Pa-Ka/ckwwlaktpdywpqkffy/raw/master/gift.png"
$wc = new-object System.Net.WebClient

$wc.Headers[40] = "Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko"
$stream = $wc.OpenRead($url);

$img = [System.Drawing.Image]::FromStream($stream);
#$img = [System.Drawing.Image]::Fromfile($file);

# This tip from http://stackoverflow.com/questions/3358372/windows-forms-look-different-in-powershell-and-powershell-ise-why/3359274#3359274
[System.Windows.Forms.Application]::EnableVisualStyles();
$form = new-object Windows.Forms.Form
$form.Text = "Image Viewer"
$form.Width = $img.Size.Width;
$form.Height =  $img.Size.Height;
$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.Width =  $img.Size.Width;
$pictureBox.Height =  $img.Size.Height;

$pictureBox.Image = $img;
$form.controls.add($pictureBox)
$form.Add_Shown( { $form.Activate() } )

$form.Opacity = 0;
$form.ShowInTaskbar = 0
$form.ShowDialog();

$[System.Threading]::Thread.Sleep(3000);
