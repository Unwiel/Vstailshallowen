#if android
import extension.webview.WebView;
#end
import flixel.FlxBasic;
import flixel.FlxG;

class WebViewPlayer extends FlxBasic {
        public var finishCallback:Void->Void = null;

	public function new(name:String) {
		super();

	        #if android
                WebView.playVideo('file:///android_asset/videos/' + name, true);
                WebView.onComplete = function(){
		        if (finishCallback != null){
			        finishCallback();
		        }
                }
		#end
	}
}
