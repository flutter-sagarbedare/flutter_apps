class Demo{
	Demo._private(){
		print("in constructor");
	}
	factory Demo(){
		print("in factory");
		// internally below statements works like this
    //return Demo._private();   => Demo object  = new Demo();
    //                          => return object
    // so both are same
    return Demo._private();
	}
}

