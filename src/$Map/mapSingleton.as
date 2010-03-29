package $Map
{
	import managers.TopLevelMap;

	public function mapSingleton(clazz:Class):void
	{
		TopLevelMap.getInstance().map(clazz, new clazz());		
	}
}                                      