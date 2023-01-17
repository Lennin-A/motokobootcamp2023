1) The controller of the ledger canister is r7inp-6aaaa-aaaaa-aaabq-cai. Although I'm not sure of the entity behind this canister.

2) The subnet is pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe
 and it contains 16 nodes. Found here https://icscan.io/subnet/pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe

 The canister is Motoko Playground! 

 3) expected voting = 1.125 x 1.5 x 10 = 16.875 

 4) You would need to add: import Nat "mo:base/Nat" to use Nat.toText()

 5) The array should be initalized with "let" instead of "var" and it should equal = [var "English", "German"]. The function can also not return a mutable array so the return should be async [Text] instead of [var Text] and change the array to immutable 

 6) The array should be initalized with "let" instead of "var". Also you cannot append to an array (add new element) and return a mutable array. The append function in the Array libary takes two input arrays as its parameters. arr : [x], arr_2 : [x] and not a var and array.