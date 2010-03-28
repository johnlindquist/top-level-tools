package $
{
	import topleveltools.TopLevelMap;

	public function getNew(clazz:Class):*
	{
		var instantiateClass:Class = TopLevelMap.getInstance().getByKey(clazz);
		return new instantiateClass();
	}
}