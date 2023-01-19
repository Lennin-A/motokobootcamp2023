import List "mo:base/List";
import Principal "mo:base/Principal";
import Buffer "mo:base/Buffer";

actor day_4 {

    public shared ({caller}) func is_anonymous() : async Bool {
      return Principal.isAnonymous(caller);
    };

};