import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Int "mo:base/Int";

actor util {

    public query func second_maximum(array : [Int]) : async Int {
        let sortedArray = Array.sort<Int>(array, Int.compare);
        return sortedArray[sortedArray.size() - 2];
  };
}