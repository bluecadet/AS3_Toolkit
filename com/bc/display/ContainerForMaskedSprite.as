package com.bc.display {
	/**
	 * "Correcting" the behavior of width and height of masked Sprites.
	 * 
	 * The parent item of a MaskedSprite will store the reference to it's
	 * children as a DisplayObject instead of not being a dick about it.
	 * This class will use * instead to allow for extended classes as it
	 * evaluates the width of itself by checking how it's contents 
	 * influences this property.
	 * 
	 * @author	Bluecadet, <info@bluecadet.com>
	 * @package	com.bc.display
	 */
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	public class ContainerForMaskedSprite extends Sprite {
		public function ContainerForMaskedSprite() {
			super();
		}
		
		/**
		 * Return the width of this Sprite respecting the actual 
		 * dimentions of it's children.
		 */
		public override function get width():Number {
			var new_width:Number = 0;
			for (var i:uint = 0; i < this.numChildren; i++) {
				if (this.getChildAt(i).x + this.getChildAt(i).width > new_width) {
					new_width = this.getChildAt(i).x + this.getChildAt(i).width;
				}
			}
			return new_width;
		}
		
		/**
		 * Return the height of this Sprite respecting the actual 
		 * dimentions of it's children.
		 */
		public override function get height():Number {
			var new_height:Number = 0;
			for (var i:uint = 0; i < this.numChildren; i++) {
				if (this.getChildAt(i).y + this.getChildAt(i).height > new_height) {
					new_height = this.getChildAt(i).y + this.getChildAt(i).height;
				}
			}
			return new_height;
		}
	}
}