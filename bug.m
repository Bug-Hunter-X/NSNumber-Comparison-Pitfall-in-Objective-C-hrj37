In Objective-C, a common yet subtle error arises when dealing with `NSNumbers` and comparing them for equality.  Direct comparison using `==` might fail unexpectedly.  This is because `NSNumber` is a class, and `==` compares pointers, not the underlying numeric values.  For instance:

```objectivec
NSNumber *number1 = @10;
NSNumber *number2 = @10;

if (number1 == number2) { // This comparison might be false!
    NSLog(@"Numbers are equal");
} else {
    NSLog(@"Numbers are NOT equal");
}
```

The above code might print "Numbers are NOT equal", even though the numbers are numerically identical. This happens because `number1` and `number2` are distinct objects in memory, even though their values are the same. 