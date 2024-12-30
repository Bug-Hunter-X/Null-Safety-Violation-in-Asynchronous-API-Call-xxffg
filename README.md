# Dart Null Safety Bug
This repository demonstrates a common bug in Dart code involving null safety violations when handling asynchronous API calls and JSON responses.
The `bug.dart` file contains code that fails to properly handle potential `null` values, leading to runtime errors. The `bugSolution.dart` file provides a corrected version with improved null safety practices.
## How to reproduce
1. Clone this repository.
2. Run `bug.dart`. Observe the exception.
3. Run `bugSolution.dart`. Observe the correct handling of nulls.
## Conclusion
This example highlights the importance of defensive programming when working with potentially null values in asynchronous operations, particularly when dealing with external APIs.