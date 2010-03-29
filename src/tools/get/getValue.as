package tools.get
{
	import tools.managers.ValueManager;

	public function getValue(value:Class):Object
	{
		return ValueManager.getInstance().getByKey(value);
	}
}