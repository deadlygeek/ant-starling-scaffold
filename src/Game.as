package {

    import starling.display.Sprite;
    import starling.display.DisplayObject;
    import starling.display.Quad;
    import starling.events.Event;

    public class Game extends Sprite
    {

        private var q:Quad;
        private var s:Sprite;

        public function Game() 
        {

            addEventListener(Event.ADDED_TO_STAGE, onAdded);

        }

        private function onAdded(e:Event):void 
        {

            q = new Quad(200, 200);
            q.color = 0x123456; 

            s = new Sprite();

            s.addChild(q);

            addChild ( s );
            s.pivotX = s.width >> 1; 
            s.pivotY = s.height >> 1;

            s.x = (stage.stageWidth - s.width >> 1 ) + (s.width >> 1); 
            s.y = (stage.stageHeight - s.height >> 1) + (s.height >> 1);

            s.addEventListener(Event.ENTER_FRAME, onFrame);
        }

        private function onFrame(e:Event):void {

            (e.currentTarget as DisplayObject).rotation += .03;

        }

    }

}
