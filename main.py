import urllib.request as downloader
import tkinter as tk
import time
from PIL import Image, ImageTk

window = tk.Tk()
window.title("hidden")
data = downloader.urlopen("https://files.cloud.naver.com/.fileLink/AP1JUQ3w6wk7uX7WtJput6aS%2FVrT939g%2FDgQcKPZpwAkV1pdYitICWXGyM%2BCPpYfrjbu8ImOfCAE3%2Fh0RM6dkwg%3D/gift.png?authtoken=IbwVK4%2Bw3yqjy5q3FGkNmQI%3D")
im = ImageTk.PhotoImage(Image.open(data))
lbl = tk.Label(window, image = im).pack()
window.mainloop()
