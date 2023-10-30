import os
import csv
from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)
result_file = "results.csv"

# Create the CSV file if it doesn't exist
if not os.path.exists(result_file):
    with open(result_file, 'w', newline='') as csvfile:
        fieldnames = ['Num1', 'Num2', 'Operation', 'Result']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()

@app.route('/')
def calculator():
    return render_template('calculator.html', result="")

@app.route('/calculate', methods=['POST'])
def calculate():
    num1 = float(request.form['num1'])
    num2 = float(request.form['num2'])
    operation = request.form['operation']

    result = 0

    if operation == 'add':
        result = num1 + num2
    elif operation == 'subtract':
        result = num1 - num2
    elif operation == 'multiply':
        result = num1 * num2
    elif operation == 'divide':
        if num2 != 0:
            result = num1 / num2
        else:
            result = "Error: Division by zero"

    # Store the result in the CSV file
    with open(result_file, 'a', newline='') as csvfile:
        fieldnames = ['Num1', 'Num2', 'Operation', 'Result']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writerow({'Num1': num1, 'Num2': num2, 'Operation': operation, 'Result': result})

    return render_template('calculator.html', result=result)

@app.route('/clear', methods=['POST'])
def clear():
    return redirect(url_for('calculator'))

@app.route('/history')
def history():
    # Read the historical results from the CSV file
    results = []
    with open(result_file, 'r', newline='') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            results.append(row)

    return render_template('history.html', results=results)

if __name__ == '__main__':
    app.run(debug=True)
