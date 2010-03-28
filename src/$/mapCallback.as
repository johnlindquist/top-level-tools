package $
{
	import topleveltools.TopLevelMap;

	public function mapCallback(command:Class, func:Function):void
	{
		TopLevelMap.getInstance().mapCallback(command, func);
	}
}