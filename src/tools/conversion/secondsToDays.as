package tools.conversion
{
	/**
	 Converts seconds to days.

	 @param seconds: The number of seconds.
	 @return Returns the number of days.
	 */
	public static function secondsToDays(seconds:Number):Number
	{
		return hoursToDays(secondsToHours(seconds));
	}
}