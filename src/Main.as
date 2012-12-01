package {

    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;

    import starling.core.Starling;

    [SWF(width="800", height="600", framerate="60", backgroundColor="#FFFFFF")]
    public class Main extends Sprite
    {

        private var mStarling:Starling;

        public function Main() {

            stage.align = StageAlign.TOP_LEFT;
            stage.scaleMode = StageScaleMode.NO_SCALE;

            //create a new starling instance
            mStarling = new Starling(Game, stage);

            //framerate performance
            mStarling.showStats = true;

            mStarling.antiAliasing = 0;

            //kick it
            mStarling.start();

        }

    }

}
