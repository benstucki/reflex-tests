package issues.issue10
{
	import reflex.binding.Bind;
	import reflex.binding.DataChange;
	import reflex.components.Component;
	
	public class TestLabelComponent extends Component
	{
		
		protected var _text:String;
		
		[Bindable("textChange")]
		public function get text():String {
			return _text;
		}
		public function set text(value:String):void {
			DataChange.change(this, "text", _text, _text = value);  
		}
		
		public function TestLabelComponent()
		{
			super();
			skin = new TestLabelSkin();
			
			Bind.addBinding(this, "skin.text", this, "text");
			
		}
	}
}