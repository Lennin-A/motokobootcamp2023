import Array "mo:base/Array";
import Text "mo:base/Text";
import Char "mo:base/Char";
import Iter "mo:base/Iter";

actor day_2 {

    public func average_array(array : [Int]) : async Int {
        var sum : Int = 0;
        for(value in array.vals()){
            sum += value;
        };
        return sum;
    };

    public func count_character(t : Text, c : Char) : async Nat {
        var count : Nat = 0; 
        for(char in Text.toIter(t)){
            if(char == c){
                count := count + 1;
            };
        };
        return count;
    };

    func factorial (n: Nat) : Nat {
      if(n == 1){
            return 1;
        };
        return n * factorial(n-1);
    };
    
    public func async_factorial(n: Nat) : async Nat {
      return factorial(n);
    };

    public func number_of_words(t : Text) : async Nat {
        let words = Text.split(t, #char ' ');
        return Iter.size<Text>(words);
    };
};