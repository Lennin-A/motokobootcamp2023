1) The memory limit of a canister is contingent on WebAssembly memory atm. If stable memory exceeds 2^32 bytes then the canister will trap. This is roughly 4GB.

2) The issue is that counter was initalized using let so it cannot be updated. When the function is called it will return an error. 

3) Several issues are: message was initalized as a number but declared as text. 
The first function returns async() instead of async Text

4) False: actors must return future types of the form async T 

So while queries are faster if inside an actor it must return async T    
