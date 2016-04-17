#!/usr/bin/pike
// Euler1 in Pike

array(int) _myrange(int size, array(int) ints) {
    if (size > 0) {
        return _myrange(size-1, ({size})+ints);
    } else {
        return ints;
    }
}

array(int) myrange(int size) {
    return _myrange(size, ({}));
}

array(mixed) map (function f, array(mixed) objs) {
    if (sizeof(objs) == 1) {
        return ({ f(objs[0]) });
    } else {
        return ({ f(objs[0]) }) + objs[1..sizeof(objs)];
    }
}

array(mixed) filter (function f, array(mixed) objs) {
    if (f(objs[0])) {
        if (sizeof(objs) == 1) {
            return ({ objs[0] });
        } else {
            return ({ objs[0] }) + filter(f, objs[1..sizeof(objs)]);
        }
    } else if (sizeof(objs) == 1) {
        return ({});
    } else {
        return filter(f, objs[1..sizeof(objs)]);
    }
}

mixed reduce(function f, mixed acc, array(mixed) objs) {
    if (sizeof(objs) == 0) {
        return acc;
    } else if (sizeof(objs) == 1) {
        return reduce(f, f(acc, objs[0]), ({}));
    } else {
        return reduce(f, f(acc, objs[0]), objs[1..sizeof(objs)-1]);
    }
}

int euler1(int size) {
    return reduce(lambda(int x, int y) {return x+y;}, 0,
        filter(lambda(int x) {return x%3==0 || x%5==0;},
            map(lambda(int x) {return x;}, 
                myrange(size))));
}

int main() {
    write( euler1(999) + "\n");
}
