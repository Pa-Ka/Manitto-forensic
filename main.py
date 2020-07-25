import urllib.request as downloader
import tkinter as tk
import time
from PIL import Image, ImageTk

window = tk.Tk()
window.title("hidden")
data = downloader.urlopen("https://files.cloud.naver.com/.fileLink/AP1JUQ3w6wk7uX7WtJputwHXIR5t2ix8Qq9RphNRcqeGSYKskc%2FOpEaCwYiPI8Mq40bpc%2BuOLH9ea7xxSfT8tAg%3D/KakaoTalk_20200719_192813534.jpg?authtoken=bEMX1onBfN%2BAGb35eTnJvQI%3D")
im = ImageTk.PhotoImage(Image.open(data))
lbl = tk.Label(window, image = im).pack()
window.mainloop()
