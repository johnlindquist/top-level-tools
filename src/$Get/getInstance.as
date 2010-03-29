package $Get
{
	import managers.TopLevelMap;

	public function getInstance(clazz:Class):*
	{
		return TopLevelMap.getInstance().getByKey(clazz);
	}
}