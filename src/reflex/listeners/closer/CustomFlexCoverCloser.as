package reflex.listeners.closer
{
	import com.allurent.coverage.runtime.CoverageManager;
	
	import org.flexunit.listeners.closer.ApplicationCloser;
	
	import spark.components.Application;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.system.*;
	
	public class CustomFlexCoverCloser implements ApplicationCloser
	{
		
		public function close():void
		{
			var waitTimer:Timer = new Timer(10000, 1);
			waitTimer.addEventListener(TimerEvent.TIMER, closeDown);
			waitTimer.start();
		}
		
		private function closeDown(event:TimerEvent):void {
			CoverageManager.exit();
			fscommand("exit");
		}
		
	}
}