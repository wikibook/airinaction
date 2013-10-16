package com.manning.airinaction.html {
	
	import flash.display.MovieClip;
	import flash.html.HTMLLoader;
	import flash.net.URLRequest;
	import flash.events.Event;
	import flash.desktop.NativeApplication;
	
	
	public class Main extends MovieClip {
		private var _htmlLoader:HTMLLoader;
		
		public function Main() {
			_htmlLoader = new HTMLLoader();
			_htmlLoader.width = stage.stageWidth;
			_htmlLoader.height = stage.stageHeight;
			_htmlLoader.addEventListener(Event.COMPLETE, completeHandler);
			_htmlLoader.load(new URLRequest("example.html"));
			addChild(_htmlLoader);
		}
		
		private function completeHandler(event:Event):void {
			stage.nativeWindow.title = _htmlLoader.window.pageTitle;
		}
	}
	
}