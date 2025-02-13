import tkinter as tk

root = tk.Tk()
root.title("Tip")

number_entry = tk.Entry(root)
percentage_entry = tk.Entry(root)
number_entry.pack()
percentage_entry.pack()

result_label = tk.Label(root, text="")
result_label.pack()

def calculate_tip():
    number = float(number_entry.get())
    percentage = float(percentage_entry.get())
    tip = number * percentage / 100
    result_label.config(text="Tip: $%.2f" % tip)

calculate_button = tk.Button(root, text="Calculate Tip", command=calculate_tip)
calculate_button.pack()
