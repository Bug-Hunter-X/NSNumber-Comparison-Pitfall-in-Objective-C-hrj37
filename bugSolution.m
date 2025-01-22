The correct way to compare `NSNumber` objects for equality is to use the `isEqualToNumber:` method:

```objectivec
NSNumber *number1 = @10;
NSNumber *number2 = @10;

if ([number1 isEqualToNumber:number2]) { 
    NSLog(@"Numbers are equal");
} else {
    NSLog(@"Numbers are NOT equal");
}
```

This method compares the actual numeric values of the `NSNumber` objects, ensuring accurate equality checks.  Always use `isEqualToNumber:` when comparing `NSNumber` instances to avoid unexpected results.