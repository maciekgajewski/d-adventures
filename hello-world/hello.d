import std.stdio;
import std.format;

// Currying doesn't work
auto make_printer(string header)
{
	void print(string text)
	{
		writeln("[" ~ header ~ "] " ~ text);
	}
	return &print;
}


int main()
{
	writeln("Hello, " ~ "world");
	writeln(int.stringof);
	
	auto p1 = make_printer("one");
	auto p2 = make_printer("two");
	
	foreach(i,f; [p1, p2])
	{
		f(format("%d yo", i));
	}

	return 0;
}

