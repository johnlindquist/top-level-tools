package top.map
{
	import top.managers.TopLevelMap;

	public function mapSingleton(clazz:Class):void
	{
		TopLevelMap.getInstance().map(clazz, new clazz());		
	}
}                                      