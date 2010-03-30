package maps.singleton
{
	import maps.managers.TopLevelMap;

	public function mapSingleton(clazz:Class):void
	{
		TopLevelMap.getInstance().map(clazz, new clazz());		
	}
}                                      