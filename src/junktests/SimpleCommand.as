package junktests
{
	public class SimpleCommand
	{
		public function execute():void
		{
			var model:SimpleModel = $getInstance(SimpleModel);
			model.update ();
		}
	}
}