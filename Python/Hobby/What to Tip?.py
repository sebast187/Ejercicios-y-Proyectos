import tkinter as tk

app = tk.Tk()
app.title("What to Tip?")

num_box = tk.Entry(app, width=30)
num_box.pack()

percent_box = tk.Entry(app, width=30)
percent_box.pack()

def calculate_tip():
    amount = float(num_box.get())
    percent = float(percent_box.get()) / 100
    tip = amount * percent
    total = amount + tip
    result_label.config(text=f"Tip: ${tip:.2f}\nTotal: ${total:.2f}")

calc_button = tk.Button(app, text="Calculate Tip", command=calculate_tip)
calc_button.pack()

result_label = tk.Label(app, text="")
result_label.pack()
