package top.get
{
	import top.managers.ValueManager;

	public function getValue(value:Class):Object
	{
		return ValueManager.getInstance().getByKey(value);
	}
}