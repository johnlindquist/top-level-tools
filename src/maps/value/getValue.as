package maps.value
{
	import maps.managers.ValueManager;

	public function getValue(value:Class):Object
	{
		return ValueManager.getInstance().getByKey(value);
	}
}