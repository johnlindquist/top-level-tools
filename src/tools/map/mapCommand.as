package tools.map
{
	import tools.managers.CommandManager;

	public function mapCommand(type:Class, command:Class):void
	{
		CommandManager.getInstance().map(type, command);
	}
}