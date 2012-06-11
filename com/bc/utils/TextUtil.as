package com.bc.utils {
	/**
	 * Text tools that may be useful
	 * 
	 * @author	Bluecadet, <info@bluecadet.com>
	 * @package	com.bc.utils
	 */
	
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public final class TextUtil {
		public function TextUtil() {}
		
		/**
		 * Creates a textfield. After talking to Jason I realized what a
		 * good idea this is.
		 * 
		 * @param String text to display
		 * @param TextFormat text formatting
		 * 
		 * @return TextField
		 */
		public static function createTextField(value:String, format:TextFormat):TextField {
			var field:TextField = new TextField();
			with (field) {
				selectable = false;
				text = value;
				embedFonts = true;
				setTextFormat(format);
				antiAliasType = AntiAliasType.ADVANCED;
				width = textWidth + 10;
				height = textHeight;
			}
			return field;
		}
	}
}