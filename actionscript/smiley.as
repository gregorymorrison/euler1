// smiley.as
package
{
	import flash.display.MovieClip

	public class Main extends MovieClip
	{
		function Main()
		{
			this.graphics.beginFill(0xcccc00)
			this.graphics.drawCircle(200,200,200)
			this.graphics.endFill()
			this.graphics.beginFill(0x000000)
			this.graphics.drawCircle(140,150,50)
			this.graphics.drawCircle(260,150,50)
			this.graphics.drawRoundRect(140,270,120,10,20);
			this.graphics.endFill()
		}
	}
}
