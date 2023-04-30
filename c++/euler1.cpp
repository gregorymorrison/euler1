// Euler1 in C++
#include <iostream>

class Euler1 {
    private:
        int size;
        int result;

        bool isMultipleOfThree(int n) {
            return n % 3 == 0;
        }

        bool isMultipleOfFive(int n) {
            return n % 5 == 0;
        }

    public:
        Euler1(int size) {
            this->size = size;
            this->result = 0;
        }

        void solve() {
            for (int i = 0; i < size; i++) {
                if (isMultipleOfThree(i) || isMultipleOfFive(i)) {
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

    std::cout << "Euler1 = " << euler1.getResult();
    return 0;
}