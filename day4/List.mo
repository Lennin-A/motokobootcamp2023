import List "mo:base/List";
import Buffer "mo:base/Buffer";
import Iter "mo:base/Iter";


module {

  public func unique<T>(l : List.List<T>, equal : (T,T) -> Bool) : List.List<T> {
    let size = List.size<T>(l);
    var unique_list = List.nil<T>();

    for(i in Iter.range(0, size -1)) {
      for(j in Iter.range(1, size -1)){
          if(List.get<T>(l,i) != List.get<T>(l,j)){
            List.push<T>(l[i], l);
          };
        };
      };
    return unique_list;
  };

    
  public func reverse<T>(l : List.List<T>) : List.List<T>{
      let reverse_list = List.reverse<T>(l);
      return reverse_list;
    };

  public func find_in_buffer<T>(buf : Buffer.Buffer<T>, val : T, equal : (T,T) -> Bool) : async ?Nat {
      return Buffer.indexOf<T>(val, buf, equal);
    };

};