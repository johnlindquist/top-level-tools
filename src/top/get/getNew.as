package top.get
{
	import top.managers.TopLevelMap;

	public function getNew(clazz:Class):*
	{
		var instantiateClass:Class = TopLevelMap.getInstance().getByKey(clazz);
		return new instantiateClass();
	}
}