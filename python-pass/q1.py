def isolate(students):
    classes = {}
    for i, v in students.items(): classes[v] = [i] if v not in classes.keys() else classes[v] + [i]
    return classes

students = {
    'Ahmed': 'Class 1',
    'Mustafa': 'Class 3',
    'Ali': 'Class 2',
    'Sara': 'Class 1',
    'Zainab': 'Class 1',
    'Zain': 'Class 2',
}

print(isolate(students))
