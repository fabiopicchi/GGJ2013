package  
{
	import flash.display.SpreadMethod;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	/**
	 * ...
	 * @author 
	 */
	public class Assets 
	{
		[Embed(source = '../resources/Dreamy Dreamy Waltz.mp3')] public static const DREAMY:Class;
		[Embed(source = '../resources/Nyan Pazuzu.mp3')] public static const NYAN:Class;
		[Embed(source = '../resources/Spaghetti on the Dance Floor.mp3')] public static const SPAGHETTI:Class;
		[Embed(source = '../resources/Música Perder.mp3')] public static const WRONG:Class;
		[Embed(source = '../resources/Música Vencer.mp3')] public static const RIGHT:Class;
		[Embed(source = '../resources/Heart Beat Attack - Menu.mp3')] public static const MENU:Class;
		
		[Embed(source = '../resources/fase1.xml', mimeType = 'application/octet-stream')] public static const FASE_1:Class;
		[Embed(source = '../resources/fase2.xml', mimeType = 'application/octet-stream')] public static const FASE_2:Class;
		[Embed(source = '../resources/fase3.xml', mimeType = 'application/octet-stream')] public static const FASE_3:Class;
		
		[Embed(source = '../resources/background.png')] public static const MENU_BACKGROUND:Class;
		
		[Embed(source = '../resources/background.png')] public static const BACKGROUND:Class;
		[Embed(source = '../resources/background_sleeper.png')] public static const BACKGROUND_SLEEPER:Class;
		[Embed(source = '../resources/background_browser.png')] public static const BACKGROUND_BROWSER:Class;
		[Embed(source = '../resources/background_lover.png')] public static const BACKGROUND_LOVER:Class;
		[Embed(source = '../resources/background_over.png')] public static const BACKGROUND_OVER:Class;
		[Embed(source = '../resources/pause_options.png')] public static const PAUSE_OPTIONS:Class;
		
		[Embed(source = '../resources/treadmill.png')] public static const TREADMILL:Class;
		
		[Embed(source = '../resources/how2play.png')] public static const HOW_TO_PLAY:Class;
		[Embed(source = '../resources/how2play_2.jpg')] public static const HOW_TO_PLAY_2:Class;
		
		[Embed(source = '../resources/catavento_splash.jpg')] public static const CATAVENTO:Class;
		[Embed(source = '../resources/flashpunk_splash.jpg')] public static const FLASHPUNK:Class;
		
		[Embed(source = '../resources/garry.png')] public static const GARRY:Class;
		[Embed(source = '../resources/larry.png')] public static const LARRY:Class;
		[Embed(source = '../resources/shaniqua.png')] public static const SHANIQUA:Class;
		[Embed(source = '../resources/terry.png')] public static const TERRY:Class;
		
		[Embed(source = '../resources/bar-blue.png')] public static const BAR_BLUE:Class;
		[Embed(source = '../resources/bar-green.png')] public static const BAR_GREEN:Class;
		[Embed(source = '../resources/bar-pink.png')] public static const BAR_PINK:Class;
		[Embed(source = '../resources/bar-teal.png')] public static const BAR_TEAL:Class;
		
		[Embed(source = '../resources/success_spritesheet.png')] public static const SUCCESS:Class;
		[Embed(source = '../resources/fail_spritesheet.png')] public static const FAIL:Class;
		
		[Embed(source = '../resources/heart_spritesheet.png')] public static const HEART:Class;
		[Embed(source = '../resources/counter_spritesheet.png')] public static const COUNTER:Class;
		
		[Embed(source = '../resources/background_endgame.png')] public static const BACKGROUND_ENDGAME:Class;
		[Embed(source = '../resources/background_gameover.png')] public static const BACKGROUND_GAMEOVER:Class;
		[Embed(source = '../resources/gameend_great.png')] public static const GAMEEND_GREAT:Class;
		[Embed(source = '../resources/gameend_well.png')] public static const GAMEEND_WELL:Class;
		[Embed(source = '../resources/lover_end_great.png')] public static const LOVER_END_GREAT:Class;
		[Embed(source = '../resources/lover_end_ok.png')] public static const LOVER_END_OK:Class;
		[Embed(source = '../resources/slacker_end_great.png')] public static const SLACKER_END_GREAT:Class;
		[Embed(source = '../resources/slacker_end_ok.png')] public static const SLACKER_END_OK:Class;
		[Embed(source = '../resources/sleeper_end_great.png')] public static const SLEEPER_END_GREAT:Class;
		[Embed(source = '../resources/sleeper_end_ok.png')] public static const SLEEPER_END_OK:Class;
		
		[Embed(source = '../resources/item_A.png')] public static const ITEM_A:Class;
		[Embed(source = '../resources/item_K.png')] public static const ITEM_K:Class;
		[Embed(source = '../resources/item_M.png')] public static const ITEM_M:Class;
		[Embed(source = '../resources/item_Z.png')] public static const ITEM_Z:Class;
		[Embed(source = '../resources/item_ALL.png')] public static const ITEM_ALL:Class;
		
		[Embed(source = '../resources/sleeper_idle01.png')] public static const SLEEPER_IDLE01:Class;
		[Embed(source = '../resources/sleeper_idle02.png')] public static const SLEEPER_IDLE02:Class;
		[Embed(source = '../resources/sleeper_idle03.png')] public static const SLEEPER_IDLE03:Class;
		[Embed(source = '../resources/sleeper_idle04.png')] public static const SLEEPER_IDLE04:Class;
		[Embed(source = '../resources/sleeper_idle05.png')] public static const SLEEPER_IDLE05:Class;
		[Embed(source = '../resources/sleeper_idle06.png')] public static const SLEEPER_IDLE06:Class;
		[Embed(source = '../resources/sleeper_idle07.png')] public static const SLEEPER_IDLE07:Class;
		[Embed(source = '../resources/sleeper_distress01.png')] public static const SLEEPER_DISTRESS01:Class;
		[Embed(source = '../resources/sleeper_distress02.png')] public static const SLEEPER_DISTRESS02:Class;
		[Embed(source = '../resources/sleeper_distress03.png')] public static const SLEEPER_DISTRESS03:Class;
		[Embed(source = '../resources/sleeper_distress04.png')] public static const SLEEPER_DISTRESS04:Class;
		[Embed(source = '../resources/sleeper_distress05.png')] public static const SLEEPER_DISTRESS05:Class;
		[Embed(source = '../resources/sleeper_distress06.png')] public static const SLEEPER_DISTRESS06:Class;
		[Embed(source = '../resources/sleeper_end01.png')] public static const SLEEPER_END01:Class;
		[Embed(source = '../resources/sleeper_end02.png')] public static const SLEEPER_END02:Class;
		[Embed(source = '../resources/sleeper_end03.png')] public static const SLEEPER_END03:Class;
		[Embed(source = '../resources/sleeper_end04.png')] public static const SLEEPER_END04:Class;
		[Embed(source = '../resources/sleeper_end05.png')] public static const SLEEPER_END05:Class;
		[Embed(source = '../resources/slacker_idle01.png')] public static const SLACKER_IDLE01:Class;
		[Embed(source = '../resources/slacker_idle02.png')] public static const SLACKER_IDLE02:Class;
		[Embed(source = '../resources/slacker_idle03.png')] public static const SLACKER_IDLE03:Class;
		[Embed(source = '../resources/slacker_idle04.png')] public static const SLACKER_IDLE04:Class;
		[Embed(source = '../resources/slacker_idle05.png')] public static const SLACKER_IDLE05:Class;
		[Embed(source = '../resources/slacker_distress01.png')] public static const SLACKER_DISTRESS01:Class;
		[Embed(source = '../resources/slacker_distress02.png')] public static const SLACKER_DISTRESS02:Class;
		[Embed(source = '../resources/slacker_clumsy01.png')] public static const SLACKER_CLUMSY01:Class;
		[Embed(source = '../resources/slacker_clumsy02.png')] public static const SLACKER_CLUMSY02:Class;
		[Embed(source = '../resources/slacker_clumsy03.png')] public static const SLACKER_CLUMSY03:Class;
		[Embed(source = '../resources/slacker_clumsy04.png')] public static const SLACKER_CLUMSY04:Class;
		[Embed(source = '../resources/slacker_clumsy05.png')] public static const SLACKER_CLUMSY05:Class;
		[Embed(source = '../resources/slacker_clumsy06.png')] public static const SLACKER_CLUMSY06:Class;
		[Embed(source = '../resources/slacker_end01.png')] public static const SLACKER_END01:Class;
		[Embed(source = '../resources/slacker_end02.png')] public static const SLACKER_END02:Class;
		[Embed(source = '../resources/slacker_end03.png')] public static const SLACKER_END03:Class;
		[Embed(source = '../resources/slacker_end04.png')] public static const SLACKER_END04:Class;
		[Embed(source = '../resources/slacker_end05.png')] public static const SLACKER_END05:Class;
		[Embed(source = '../resources/slacker_end06.png')] public static const SLACKER_END06:Class;
		[Embed(source = '../resources/lover_idle01.png')] public static const LOVER_IDLE01:Class;
		[Embed(source = '../resources/lover_idle02.png')] public static const LOVER_IDLE02:Class;
		[Embed(source = '../resources/lover_idle03.png')] public static const LOVER_IDLE03:Class;
		[Embed(source = '../resources/lover_idle04.png')] public static const LOVER_IDLE04:Class;
		[Embed(source = '../resources/lover_idle05.png')] public static const LOVER_IDLE05:Class;
		[Embed(source = '../resources/lover_idle06.png')] public static const LOVER_IDLE06:Class;
		[Embed(source = '../resources/lover_distress01.png')] public static const LOVER_DISTRESS01:Class;
		[Embed(source = '../resources/lover_distress02.png')] public static const LOVER_DISTRESS02:Class;
		[Embed(source = '../resources/lover_distress03.png')] public static const LOVER_DISTRESS03:Class;
		[Embed(source = '../resources/lover_distress04.png')] public static const LOVER_DISTRESS04:Class;
		[Embed(source = '../resources/lover_clumsy01.png')] public static const LOVER_CLUMSY01:Class;
		[Embed(source = '../resources/lover_clumsy02.png')] public static const LOVER_CLUMSY02:Class;
		[Embed(source = '../resources/lover_clumsy03.png')] public static const LOVER_CLUMSY03:Class;
		[Embed(source = '../resources/lover_clumsy04.png')] public static const LOVER_CLUMSY04:Class;
		[Embed(source = '../resources/lover_end01.png')] public static const LOVER_END01:Class;
		[Embed(source = '../resources/lover_end02.png')] public static const LOVER_END02:Class;
		[Embed(source = '../resources/lover_end03.png')] public static const LOVER_END03:Class;
		[Embed(source = '../resources/lover_end04.png')] public static const LOVER_END04:Class;
		
		[Embed(source = '../resources/mainmenu_bg.png')] public static const MAINMENU_BG:Class;
		[Embed(source = '../resources/mainmenu_heart01.png')] public static const MAINMENU_HEART1:Class;
		[Embed(source = '../resources/mainmenu_heart02.png')] public static const MAINMENU_HEART2:Class;
		[Embed(source = '../resources/mainmenu_heart03.png')] public static const MAINMENU_HEART3:Class;
		[Embed(source = '../resources/titleheart_spritesheet.png')] public static const TITLEHEART_SPRITESHEET:Class;
		
		[Embed(source = '../resources/arrow.png')] public static const ARROW:Class;
		[Embed(source = '../resources/credits.jpg')] public static const CREDITS:Class;
		
		public static function getHelperAsset (code : String) : Graphic
		{
			switch (code)
			{
				case "UL":
					return new Image(TERRY);
					break;
				case "UR":
					return new Image(LARRY);
					break;
				case "DL":
					return new Image(GARRY);
					break;
				case "DR":
					return new Image(SHANIQUA);
					break;
			}
			return null;
		}
		
		public static function getItemAsset (code : String) : Spritemap
		{
			switch (code)
			{
				case "UL":
					return new Spritemap(ITEM_A, 64, 46);
					break;
				case "UR":
					return new Spritemap(ITEM_K, 74, 51);
					break;
				case "DL":
					return new Spritemap(ITEM_Z, 61, 46);
					break;
				case "DR":
					return new Spritemap(ITEM_M, 71, 57);
					break;
				case "DRDL":
					return new Spritemap(ITEM_ALL, 56, 55);
					break;
				case "URUL":
					return new Spritemap(ITEM_ALL, 56, 55);
					break;
			}
			return null;
		}
		
		public function Assets() 
		{
			
		}
		
	}

}