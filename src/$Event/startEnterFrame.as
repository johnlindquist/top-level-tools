package $Event
{
	import topleveltools.SingleEnterFrame;

	public function startEnterFrame():void
	{
		SingleEnterFrame.getInstance().start();
	}
}