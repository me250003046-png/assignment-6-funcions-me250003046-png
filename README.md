# LAB-6: Arrays and Functions

## Important: What you'll need to do

❗Each function file has a TODO comment. That's is the part where you need to write yourown code! The program will not work until you fill in those TODOs.

⚠️ **Warning:** Do not modify the `main()` function.

---

### Programs

---

### Program 1: Greatest common divisior

📝 Instruction: Implement the `gcd(int a, int b)` function.

- You are given a C++ program that reads two integers from the user and prints their Greatest Common Divisor (GCD). Your task is to implement the gcd function using **recursion**.
- **Hint:** gcd(a,b)=gcd(b,amodb)

🔍 **Definition of GCD:** The Greatest Common Divisor (GCD) of two integers a and b is the largest positive integer that divides both a and b without leaving a remainder.

For example:\
GCD of 12 and 8 is 4.\
GCD of 14 and 21 is 7.

✅ **What you need to do inside the `gcd(int a, int b)` function:**

The goal of this function is to **recursively find the Greatest Common Divisor (GCD)** of two integers `a` and `b` using the Euclidean algorithm.

**Steps:**

1. Check if `b` is 0:
   - If yes, return `a` because the GCD of `a` and 0 is `a`.

2. Otherwise, recursively call `gcd` with parameters:
   - `b`
   - `a % b` (the remainder when `a` is divided by `b`)

3. The recursion continues until the base case (`b == 0`) is reached, returning the GCD.

---

### Program 2: Prime palindrome

📝 Instruction: Implement the `isPrime(int n)`, `isPalindrome(int n)`, and `primePalindrome(int n)` functions.

- You are given a C++ program that reads an integer n and prints 1 if the number is both prime and a palindrome, otherwise prints 0.

✅ **What you need to do inside each function:**

#### 1. `bool isPrime(int n)`

Check if `n` is a **prime number**.

A prime number is a natural number greater than 1 that has no positive divisors other than 1 and itself.

**Steps:**

- If `n` is less than 2, return `false`.
- If `n` is 2, return `true` (2 is prime).
- If `n` is even (divisible by 2), return `false`.
- For odd numbers, check divisibility from 3 to the square root of `n`, incrementing by 2.
- If any divisor divides `n` evenly, return `false`.
- Otherwise, return `true`.

#### 2. `bool isPalindrome(int n)`

Check if the number `n` reads the same forwards and backwards.

**Steps:**

- Store the original value of `n`.
- Reverse the digits of `n` by extracting each digit from the end and building the reversed number.
- Compare the reversed number with the original number.
- Return `true` if they are equal, `false` otherwise.

#### 3. `bool primePalindrome(int n)`

Combine the two previous checks.

- Return `true` only if the number is **both prime and palindrome**.
- Otherwise, return `false`.

---

### Program 3: Product of array elements

📝 Instruction: Implement the `productExceptIndex(const vector<int>& arr)` function.

- You are given a C++ program that reads an integer array from the user and prints a new array where each element at index `i` is the product of all elements in the original array except the element at index `i`.

✅ **What you need to do inside the `productExceptIndex(const vector<int>& arr)` function:**

The goal is to compute an output array where each element is the product of all the numbers in the input array **except** the one at the current index, **without using division**.

**Steps:**

1. Initialize an output vector of the same size as the input, filled with `1`s.

2. Use a variable `prefix` to store the product of all elements to the **left** of the current index.

3. Traverse the input array from **left to right**:
   - Assign the current `prefix` value to the output at index `i`.
   - Multiply `prefix` by the current element `arr[i]`.

4. Use another variable `suffix` to store the product of all elements to the **right** of the current index.

5. Traverse the input array from **right to left**:
   - Multiply the current output value at index `i` by `suffix`.
   - Multiply `suffix` by the current element `arr[i]`.

6. Return the output vector.

---

### Program 4: Second largest element of array

📝 Instruction: Implement the `secondLargest(const vector<int>& arr)` function.

- You are given a C++ program that reads an integer array from the user and prints a integer which is the second larget element of the array.

✅ **What you need to do inside the `secondLargest(const vector<int>& arr)` function:**

The goal of this function is to find and return the **second largest unique element** in the input vector `arr`.

**Steps:**

1. Check if the size of the array is less than 2:
   - If yes, return `-1` immediately since there's no second largest element.

2. Initialize two variables:
   - `largest` to the smallest possible integer (`INT_MIN`).
   - `second` to the smallest possible integer (`INT_MIN`).

3. Loop through each value `val` in the array:
   - If `val` is greater than `largest`:
     - Update `second` to the old `largest`.
     - Update `largest` to `val`.
   - Else if `val` is greater than `second` and **not equal** to `largest`:
     - Update `second` to `val`.

4. After the loop, check if `second` was updated from `INT_MIN`:
   - If not, return `-1` indicating there is no second largest element.
   - Otherwise, return `second`.

---

### Program 5: Sum of array

📝 Instruction: Implement the `sumArray(const vector<int>& arr)` function.

- You are given a C++ program that reads an array of integers from the user and prints the sum of its elements. Your task is to implement the `sumArray(const vector<int>& arr)` function that takes a vector(array) of integers as input and returns the total sum of its elements.
- Hint: Use `size()` function to get the size of the array.

✅ **What you need to do inside the `umArray(const vector<int>& arr)` function:**

The goal of this function is to calculate and return the **sum of all elements** in the input vector `arr`.

**Steps:**

1. Initialize an integer variable `sum` to 0.

2. Loop through each element `val` in the vector `arr`:
   - Add `val` to `sum`.

3. After the loop ends, return the value of `sum`.

---

### How to test your work

- **Download and unzip the complete repository into your local machine.**

- Use the below command in terminal to run individual files.

```
    g++ filename.cpp -o filename
    ./filename
```

- **Use the below command in terminal to run the all file at once**

```
    chmod +x check.sh
    ./check.sh
```

---

### Key concept of C++ you will use

- **Functions:** Clocks of code that do specific jobs.
- **Vectors:** Like lists/arrays - they hold multiple values.
- **Loops:** Loops to iterate over the arrays.
- **Return Statement:** return the result value from the funtion or after the function call.
- **Conditional Statement:** Help to branching in the code logics.
