import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import Principal "mo:base/Principal";
actor {

    let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public shared ({ caller }) func add_username(name : Text) : async () {
      usernames.put(caller, name);
    };

    //usernames.entries -> Iter<k,V>  Iter.toArray -> returns array 
    public shared func get_usernames() : async [(Principal, Text)]{
      return(Iter.toArray(usernames.entries()));
    };


};