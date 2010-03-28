package $String
{
	public function $getNumbersFromString(source:String):String
	{
		var pattern:RegExp = /[^0-9]/g;
		return source.replace(pattern, '');
	}
}