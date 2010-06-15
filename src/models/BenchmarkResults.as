package models
{

	import org.robotlegs.mvcs.Actor;
	
	import signals.ResultsUpdatedSignal;

	public class BenchmarkResults extends Actor
	{
		
		[Inject] public var resultsUpdated:ResultsUpdatedSignal;

		private var _numResults:uint;
		private var _maxValue:uint;
		private var _minValue:uint;
		private var _total:uint;
		private var _average:Number;
		
		public function BenchmarkResults()
		{
			_numResults = 0;
			_maxValue = 0;
			_minValue = 0;
			_total = 0;
			_average = 0;
		}
		
		public function addResult(value:int):void
		{
			_numResults++;
			_total+=value;
			_average=_total/_numResults;
			if (value>_maxValue)
			{
				_maxValue = value;
			}
			if (_minValue==0 || value<_minValue)
			{
				_minValue = value;
			}
			resultsUpdated.dispatch(_numResults,_minValue,_maxValue,_average);
		}

	}

}