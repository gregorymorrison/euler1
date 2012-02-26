// Euler1 in C #
using System;
using System.Linq;

class Euler1 {
    public static void Main() {
        var range = Enumerable.Range(1, 999);

        var result = (from n in range
                     where n % 3 == 0 || n % 5 == 0
                     select n).Sum();

        Console.WriteLine(result);
    }
}