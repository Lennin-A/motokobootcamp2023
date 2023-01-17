import Array "mo:base/Array";

actor day_2 {

    public func average_array(array : [Int]) : async Int {
        var sum : Int = 0;
        for(value in array.vals()){
            sum += value;
        };
        return sum;
    };

};