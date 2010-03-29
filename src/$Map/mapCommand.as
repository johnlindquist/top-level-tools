package $Map
{
	import managers.CommandManager;

	public function mapCommand(type:Class, command:Class):void
	{
		CommandManager.getInstance().map(type, command);
	}
}