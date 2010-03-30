package maps.type
{
	import maps.managers.TopLevelMap;

	public function mapType(whenAskedFor:Class, instantiateClass:Class):*
	{
		TopLevelMap.getInstance().mapClass(whenAskedFor, instantiateClass);
	}
}