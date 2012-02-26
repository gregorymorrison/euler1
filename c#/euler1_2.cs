// Euler1 in C #
using System;
using System.Linq;

class Euler1 {
    public static void Main() {

        Func<int, int> euler1 = size => {
            return Enumerable.Range(1, size)
                .Select(i => i)
                .Where(i => i%3==0 || i%5==0)
                .Aggregate(0, (i,acc) => i+acc);
        };

        Console.WriteLine(euler1(999));
    }
}