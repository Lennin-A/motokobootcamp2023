import Array "mo:base/Array";
import Text "mo:base/Text";
import Char "mo:base/Char";
import Iter "mo:base/Iter";
import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Buffer "mo:base/Buffer";

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

    /*
    Write a function find_duplicates that takes an array of natural numbers and 
    returns a new array containing all duplicate numbers. 
    The order of the elements in the returned array should be the same 
    as the order of the first occurrence in the input array.
    */

    public func find_duplicates(a : [Nat]) : async [Nat] {
      let size = a.size();
      let buffer = Buffer.Buffer<Nat>(size);
      for(i in Iter.range(0, size-1)){
          for(j in Iter.range(1, size-1)){
            if(a[i] == a[j] and Buffer.contains(buffer, a[i], Nat.equal) == false){
              buffer.add(a[i]);
              };
            };
        };
      return Buffer.toArray(buffer);
    };

    func num_to_bin(n: Nat): Text {
        var Iter : Int = n;
        var bin_string : Text = "";
        while(Iter > 0){
          bin_string := Text.concat(Int.toText(Iter%2), bin_string);
          Iter := Iter/2;
        };        
        return bin_string;
    };

    public func convert_to_binary(n : Nat) : async Text {
        return num_to_bin(n);
    };


};