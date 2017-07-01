import std.exception;
import std.stdio;

import list;

int main()
{
	writeln("starting test...");
	
	List!int l;
	enforce(l.empty());
	
	l.push_front(7);

	enforce(!l.empty());
	enforce(l.size() == 1);

	immutable List!string ls;
	enforce(ls.empty());
	
	
	writeln("test finished");
	
	return 0;
}
