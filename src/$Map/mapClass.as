package $Map
{
	import managers.TopLevelMap;

	public function mapClass(whenAskedFor:Class, instantiateClass:Class):*
	{
		TopLevelMap.getInstance().mapClass(whenAskedFor, instantiateClass);
	}
}