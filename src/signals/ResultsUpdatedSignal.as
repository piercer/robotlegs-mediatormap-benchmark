package signals
{
	import org.osflash.signals.Signal;
	
	public class ResultsUpdatedSignal extends Signal
	{
		public function ResultsUpdatedSignal()
		{
			super(int,int,int,Number);
		}
	}
}