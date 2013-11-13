(
var netAddresses = Dictionary.new();
// Set ensemble players' names and IP addresses here
var ipAddresses = [
	[\sofia, "10.45.62.132"],
	[\liew,"10.52.96.152"],
	[\ed,"10.52.96.137"],
	[\andy,"10.52.96.139"],
	[\scott,"10.52.96.139"],
];

ipAddresses.do({ arg item, i;
	netAddresses.add(item[0]->NetAddr.new(item[1], 57120) );
});

// Set some environment variables to send to specific users and/or to free listeners if need be
~players = netAddresses;
~listeners = Array.new(netAddresses.size);
netAddresses.keysValuesDo({arg key, value;
	var listener = OSCFunc.new({
			arg msg;

		p[key] = msg[1];
		}, key);
	~listeners.add(listener);
});
)

/*
// EXAMPLES

// Send a specific player a message
~players[\liew].sendMsg(\bang, 5);
//OR
~liew = ~players[\liew];
~liew.sendMsg(\bang, 5);


// FREE LISTENERS
~listeners.do({|item| item.free});
*/