package
{

	import flash.display.Sprite;
	import flash.text.TextField;

	import junktests.SimpleModel;
	import junktests.SimpleObject;
	import junktests.InjectStuffHere;

	public class TopLevelTools extends Sprite
	{
		private var textField:TextField;
		public function TopLevelTools()
		{
			textField = new TextField();
			textField.text = "Hello, World";
			addChild(textField);

			$addEnterFrameCallback(onEnterFrame);
			$addEnterFrameCallback(onEnterFrame2);

			$startEnterFrame();

			//should probably have a parameter to define a context
			$mapClass(SimpleObject, SimpleObject);
			$mapSingleton(SimpleModel);

			var simpleSprite:Sprite = new InjectStuffHere();
		}

		private function onEnterFrame2():void
		{
			textField.x += 1;
		}

		private function onEnterFrame():void
		{
			textField.text = Math.random().toString();
		}
	}
}
