package tools.conversion
{
	/**
	 Converts minutes to milliseconds.

	 @param minutes: The number of minutes.
	 @return Returns the number of milliseconds.
	 */
	public static function minutesToMilliseconds(minutes:Number):Number
	{
		return secondsToMilliseconds(minutesToSeconds(minutes));
	}
}