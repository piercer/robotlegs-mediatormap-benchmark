package views
{

	import flash.display.Sprite;
	import flash.utils.getTimer;
	
	public class TestView extends Sprite implements ITestView
	{
		
		private var _createTime:int;
		
		public function TestView()
		{
			_createTime = getTimer();
			for (var i:uint=0;i<2000;i++)
			{
				addChild(new Sprite());
			}
		}

		public function get createTime():int
		{
			return _createTime;
		}

	}
}