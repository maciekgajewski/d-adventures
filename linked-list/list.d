
struct Node(T)
{
	T value;
	Node* next = null; 
}

struct List(T)
{
	alias NodeT = Node!T;
	private NodeT* mHead;

	const bool empty() { return mHead == null; }

	const size_t size()
	{
		size_t size = 0;
		NodeT* ptr = cast(NodeT*)(mHead); // TODO ugly
		while(ptr)
		{
			size++;
			ptr = (*ptr).next;
		}
		return size;
	}
	
	void push_front(T v)
	{
		auto newNode = new Node!T;
		newNode.value = v;
		(*newNode).next = mHead;
		mHead = newNode;
	}
}


