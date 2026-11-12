name = input("Enter your name: ")
age = int(input("Enter your age: "))

print(f"Hello, {name}!")

if age >= 18:
    print("You are an adult")
else:
    print("You are a minor")

for i in range(1, 4):
    print(f"Iteration: {i}")
