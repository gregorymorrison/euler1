// Euler1 in C++
#include <iostream>

class Euler1 {
    private:
        int size;
        int result;

    public:
        Euler1(int _size) {
            size = _size;
            result = 0;
        }

        int solve() {
            for (int i=0; i<size; i++) {
                if (i%3==0 || i%5==0) {
                    result += i;
                }
            }
        }

        int getResult() {
            return result;
        }
};

int main () {
    Euler1 euler1(1000);

    euler1.solve();

    std::cout << euler1.getResult();
    return 0;
}