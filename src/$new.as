package
{
	import topleveltools.TopLevelMap;

	public function $new(clazz:Class):*
	{
		var instantiateClass:Class = TopLevelMap.getInstance().getByKey(clazz);
		return new instantiateClass();
	}
}