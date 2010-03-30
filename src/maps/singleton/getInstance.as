package maps.singleton
{
	import maps.managers.TopLevelMap;

	public function getInstance(clazz:Class):*
	{
		return TopLevelMap.getInstance().getByKey(clazz);
	}
}