package maps.clazz
{
	import maps.managers.TopLevelMap;

	public function mapClass(whenAskedFor:Class, instantiateClass:Class):*
	{
		TopLevelMap.getInstance().mapClass(whenAskedFor, instantiateClass);
	}
}