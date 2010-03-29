package tools.get
{
	import tools.managers.TopLevelMap;

	public function getNew(clazz:Class):*
	{
		var instantiateClass:Class = TopLevelMap.getInstance().getByKey(clazz);
		return new instantiateClass();
	}
}