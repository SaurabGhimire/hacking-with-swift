import UIKit

// Create an array of strings, then
// write some code that prints the no. of items
// print no. of unique items in array

var greeting = "Hello, playground"

var movies: [String] = [String] (["Superman", "Spiderman", "Spiderman"]);

print(movies.count)

var moviesSet: Set<String> = Set(movies);

print(moviesSet.count);
