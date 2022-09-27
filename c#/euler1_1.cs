// Euler1 in C #
using System;

class Euler1 {
    private int size;
    private int result;

    public Euler1(int size) {
        this.size = size;
    }

    public void solve() {
        result = 0;
        for (int i=0; i<size; i++) {
            if (i%3==0 || i%5==0) {
                result += i;
            }
        }
    }

    public int getResult() {
        return result;
    }

    public static void Main() {
        Euler1 euler1 = new Euler1(1000);
        euler1.solve();
        Console.WriteLine(euler1.getResult());
    }
}
