SimpleNetworkMusicAdapter
=========================

A simple SuperCollider script for connecting networked computers together and assigning environment variables for each performer. 


// EXAMPLES

// Send a specific player a message
~players[\liew].sendMsg(\bang, 5);
//OR
~liew = ~players[\liew];
~liew.sendMsg(\bang, 5);


// FREE LISTENERS
~listeners.do({|item| item.free});