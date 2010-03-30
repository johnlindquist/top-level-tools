package maps.type
{
	import maps.managers.TopLevelMap;

	public function getType(clazz:Class):*
	{
		var instantiateClass:Class = TopLevelMap.getInstance().getByKey(clazz);
		return new instantiateClass();
	}
}