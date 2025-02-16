```dart
List<int?> nullableNumbers = [1, 2, null, 4, 5];
int? nullableSum = nullableNumbers.reduce((a, b) => a == null || b == null ? 0 : a + b);
print(nullableSum); //Prints 12

// Alternative solution using fold for better readability
int? nullableSumFold = nullableNumbers.fold<int?>(0, (sum, element) => sum! + (element ?? 0));
print(nullableSumFold); // Prints 12
```