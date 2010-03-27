package
{
	public function $execute(clazz:Class, functionName:String = "execute"):void
	{
		var command:* = new clazz();
		command[functionName]();
	}
}