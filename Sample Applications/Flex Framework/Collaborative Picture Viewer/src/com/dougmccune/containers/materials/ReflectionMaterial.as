package com.dougmccune.containers.materials
{
	import flash.display.BlendMode;
	import flash.display.DisplayObject;
	import flash.display.GradientType;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	
	import org.papervision3d.materials.MovieMaterial;
	
	public class ReflectionMaterial extends MovieMaterial
	{
		
		public function ReflectionMaterial(movieAsset:DisplayObject=null, transparent:Boolean=true, animated:Boolean=true)
		{
			super(movieAsset, transparent, animated);
		}
		
		/**
		 * Basically we're flipping the image vertically, then drawing a gradient over it and drawing that using
		 * the ALPHA blend mode.
		 */
		override public function drawBitmap():void {
			
			var mtx:Matrix = new Matrix();
			mtx.scale( movie.scaleX, -movie.scaleY );
			mtx.translate(0, movie.height);
			
			bitmap.draw( movie, mtx, movie.transform.colorTransform, BlendMode.LAYER );
	
			var sprite:Sprite = new Sprite();
			
			var alphas:Array = [0, .2];
			var ratios:Array = [150, 255];
			var matr:Matrix = new Matrix();
			matr.createGradientBox(bitmap.width, bitmap.height, Math.PI/2, 0, 0);
			
			sprite.graphics.beginGradientFill(GradientType.LINEAR, [0x000000, 0x000000], alphas, ratios, matr);  
			sprite.graphics.drawRect(0,0,bitmap.width,bitmap.height);
			
			bitmap.draw(sprite, mtx, null, BlendMode.ALPHA);
		}
		
		
	}
}