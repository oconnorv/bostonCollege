from tkinter import *
window=Tk()
the_canvas=Canvas(window,width=500,height=500)
the_canvas.grid(row=0,column=0)
# These next four statements are the ones you should play with for your
# program. LEAVE EVERYTHING ELSE (apart from the comments) ALONE

the_canvas.create_oval(100,100,400,400,fill='yellow') # draws the face
the_canvas.create_arc(175,175,325,325,start=225,extent=90,style=ARC) # draws the mouth
the_canvas.create_oval(200,205,202,207,fill='black') # draws the left eye
the_canvas.create_oval(298,205,300,207,fill='black') # draws the right eye

window.mainloop()
