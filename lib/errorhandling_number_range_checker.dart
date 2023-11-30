/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/errorhandling_number_range_checker_base.dart';

/*
Practice Question 1: Number Range Checker

Task:

Create a function named checkNumberRange that takes an integer and 
checks if it is within a specified range (e.g., 1 to 100).

If the number is outside the range, throw a custom exception named OutOfRangeException.

Include an optional parameter in the function to allow specifying different ranges.
 */

class OutOfRangeException implements Exception {
  final String message;
  OutOfRangeException(this.message);
}

void checkNumberRange(int numberToCheck, {min = 1, max = 100}) {
  if(!(numberToCheck >= min && numberToCheck <= max)){
    throw OutOfRangeException("Threw out of range exception on the number: $numberToCheck");
  }
}
