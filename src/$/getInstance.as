package $
{
	import topleveltools.TopLevelMap;

	public function getInstance(clazz:Class):*
	{
		return TopLevelMap.getInstance().getByKey(clazz);
	}
}