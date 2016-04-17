// Euler1 in Haxe

class Euler1 {
    static function euler (size:Int) : Int {
        var result = 0;
        for(i in 1...size) {
            if (i%3==0 || i%5==0)
                result += i;
        }
        return result;
    }

    static function main() {
        neko.Lib.print( euler(1000)+"\n" );
    }
}