# Objective-C NSNumber Comparison Issue

This repository demonstrates a common pitfall in Objective-C when comparing `NSNumber` objects for equality.  Directly using the `==` operator compares memory addresses, not the numerical values. This can lead to unexpected behavior in your applications. 

The `bug.m` file shows the problematic code, and `bugSolution.m` provides the corrected approach using `isEqualToNumber:`.