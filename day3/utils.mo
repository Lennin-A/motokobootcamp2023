import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Int "mo:base/Int";

actor util {

    public query func second_maximum(array : [Int]) : async Int {
        let sortedArray = Array.sort<Int>(array, Int.compare);
        return sortedArray[sortedArray.size() - 2];
    };

    public query func remove_even(array : [Nat]) : async [Nat] {
        let f = func(n : Nat) : Bool {
        return n % 2 == 0;
        };

    return Array.filter<Nat>(array, f);
    };

    // [1,2,3,4], 2
    // [3,4]
    public func drop<T>(xs : [T], n : Nat) : async [T] {
        return Array.tabulate<T>(n, func (i) = xs[i+n] );
    };
}