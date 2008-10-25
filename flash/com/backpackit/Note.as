package com.backpackit {
	import flash.display.*;
	import flash.events.*;
	import flash.text.*
	import flash.xml.*;

	public class Note extends MovieClip {

		public function Note() {
      addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		public function init(e:Event) {
		  trace("note init")
		  // Font
		  var officina_sans:Font = new OfficinaSans();
			var format:TextFormat = new TextFormat();
		  format.font = officina_sans.fontName;
			format.color = 0x666666;
			format.size = 16;
			format.leading = 6;

		  // Text
		  var txt = new TextField();
		  // txt.autoSize = TextFieldAutoSize.LEFT;
		  txt.selectable = false;
			txt.multiline = true;
			txt.wordWrap = true;
		  // txt.embedFonts = true;
		  txt.width = 500;
		  txt.height = 300;
			txt.defaultTextFormat = format;

			txt.htmlText = MovieClip(parent)._data["regular-body"];
			addChild(txt);
		}
				
	}
}