#!/usr/bin/python
# Euler1 in Tkinter
from Tkinter import *

def euler1(x):
    return sum(i for i in range(x) if i%3==0 or i%5==0)

class Application(Frame):
    def __init__(self, master=None):
        Frame.__init__(self, master)

        self.QUIT = Button(self)
        self.QUIT["text"] = euler1(1000)
        self.QUIT["command"] =  self.quit
        self.QUIT.pack({"side": "left"})
        self.pack()

root = Tk()
app = Application(master=root)
app.mainloop()
root.destroy()