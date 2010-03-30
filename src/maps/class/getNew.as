package maps.class
{
	import maps.managers.TopLevelMap;

	public function getNew(clazz:Class):*
	{
		var instantiateClass:Class = TopLevelMap.getInstance().getByKey(clazz);
		return new instantiateClass();
	}
}