package tools.map
{
	import tools.managers.TopLevelMap;

	public function mapClass(whenAskedFor:Class, instantiateClass:Class):*
	{
		TopLevelMap.getInstance().mapClass(whenAskedFor, instantiateClass);
	}
}