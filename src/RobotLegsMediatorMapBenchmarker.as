package
{
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	import views.TestView;
	
	public class RobotLegsMediatorMapBenchmarker extends Sprite
	{
		
		private var _view:TestView;
		private var _iTick:uint;
		private var _context:RobotlegsMediatorMapBenchmarkerContext;
		
		public var numSamples:TextField;
		public var maxValue:TextField;
		public var minValue:TextField;
		public var average:TextField;
		
		public function RobotLegsMediatorMapBenchmarker():void
		{
			buildView();
			_context=new RobotlegsMediatorMapBenchmarkerContext(this);
		}
		
		private function buildView():void
		{
			var numSamplesLabel:TextField = new TextField();
			var minValueLabel:TextField = new TextField();
			var maxValueLabel:TextField = new TextField();
			var averageLabel:TextField = new TextField();
			numSamples = new TextField();
			minValue = new TextField();
			maxValue = new TextField();
			average = new TextField();
			
			numSamplesLabel.text = "Number Registered";
			numSamplesLabel.y=10;
			numSamples.y=10;
			numSamples.x=150;
			
			minValueLabel.text = "Min";
			minValueLabel.y=25;
			minValue.y=25;
			minValue.x=150;
			
			maxValueLabel.text = "Max";
			maxValueLabel.y=40;
			maxValue.y=40;
			maxValue.x=150;

			averageLabel.text = "Average";
			averageLabel.y=55;
			average.y=55;
			average.x=150;
			
			addChild(numSamplesLabel);
			addChild(numSamples);
			addChild(minValueLabel);
			addChild(minValue);
			addChild(maxValueLabel);
			addChild(maxValue);
			addChild(averageLabel);
			addChild(average);
		}
		
		public function startBenchmark():void
		{
			_iTick=0;
			addEventListener(Event.ENTER_FRAME,onEnterFrame);			
		}
		
		private function onEnterFrame(event:Event):void
		{
			if (++_iTick%3==0)
			{
				if (_view && contains(_view))
				{
					removeChild(_view);
					_view = null;
				}
				else
				{
					_view = new TestView();
					addChild(_view);
				}
			}
		}
		
	}
}