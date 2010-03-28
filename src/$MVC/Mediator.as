package $MVC
{
	import flash.display.Sprite;

	public class Mediator
	{
		private var _view:Sprite;

		public function set view(value:Sprite):void
		{
			_view = value;
		}

		public function get view():Sprite
		{
			return _view;
		}

		public function onRegister():void
		{
			
		}
	}
}