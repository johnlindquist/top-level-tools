package maps.event
{
	import maps.managers.SingleEnterFrame;

	public function startEnterFrame():void
	{
		SingleEnterFrame.getInstance().start();
	}
}