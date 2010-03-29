package $Get
{
	import managers.ValueManager;

	public function getValue(value:Class):Object
	{
		return ValueManager.getInstance().getByKey(value);
	}
}