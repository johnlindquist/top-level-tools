package tools.get
{
	import tools.managers.TopLevelMap;

	public function getInstance(clazz:Class):*
	{
		return TopLevelMap.getInstance().getByKey(clazz);
	}
}