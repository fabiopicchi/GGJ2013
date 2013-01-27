package  
{
	import Loader.XmlLoader;
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.Sfx;
	import net.flashpunk.utils.Draw;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.World;
	/**
	 * ...
	 * @author 
	 */
	public class Level extends World 
	{
		public var xmlLoader:XmlLoader;
		//public static var channel1 : Sfx;
		//public static var channel2 : Sfx;
		public static var channelBase : Sfx;
		
		public static const PER_SECOND : Number = 0.016666666666667;
		public static const HELPER_RX : int = 524;
		public static const HELPER_LX : int = 271;
		public var missInterval : Number = 0.5;
		public var rightInterval : Number = 0.2; //picchi usava 0.15
		public static var bpm : int;
		public static var valsPerBeat : int;
		public static var noteSpeed : int;
		public var arNotes : Array = [];
		public var arEvents : Array = [];
		private var textBox : Entity;
		private var textField : Text = new Text ("", 20, 20);
		public var timer : Number = 0;
		private var shade : Entity;
		
		public var helperUR : Helper;
		public var helperUL : Helper;
		public var helperDR : Helper;
		public var helperDL : Helper;
		
		public var upperTreadmill_1 : Treadmill;
		public var upperTreadmill_2 : Treadmill;
		public var lowerTreadmill_1 : Treadmill;
		public var lowerTreadmill_2 : Treadmill;
		
		public var start : Number = 4;
		public var bInsert : Boolean = false;
		public var bStart : Boolean = false;
		public var bPaused : Boolean = false;
		private var _menu : Menu;
		private var debugInstant:Boolean;
		
		
		public function Level() 
		{
			loadStage();
			
			var e : Entity
			var level : int = 1;
			switch (level)
			{
				case 1:
					e = new Entity(0, 0, new Image(Assets.BACKGROUND_SLEEPER));
					break;
				case 2:
					e = new Entity(0, 0, new Image(Assets.BACKGROUND_BROWSER));
					break;
				case 3:
					e = new Entity(0, 0, new Image(Assets.BACKGROUND_LOVER));
					break;
			}
			add(e);
			
			e = new StageHeader(level);
			add(e);
			
			e = new Entity(0, 0, new Image(Assets.BACKGROUND_OVER));
			add(e);
			
			e = new Entity(0, 223, new Image(Assets.BACKGROUND));
			add(e);
			
			upperTreadmill_1 = new Treadmill(0, 287, noteSpeed);
			upperTreadmill_2 = new Treadmill(upperTreadmill_1.tWidth, 287, noteSpeed);
			lowerTreadmill_1 = new Treadmill(-200, 483, noteSpeed);
			lowerTreadmill_2 = new Treadmill(-200 + lowerTreadmill_1.tWidth, 483, noteSpeed);
			add(upperTreadmill_1);
			add(upperTreadmill_2);
			add(lowerTreadmill_1);
			add(lowerTreadmill_2);
			
			_menu = new Menu (Image.createRect(20, 20), 150, 300, function () : void
			{
				FP.world = new Level;
			});
			_menu.addOption(150, 400, function () : void
			{
				FP.world = new MenuScreen;
			});
			_menu.disabled = true;
			
			//channel1 = new Sfx(Assets.DREAMY_1);
			//channel2 = new Sfx(Assets.DREAMY_2);
			
			//channelBase = new Sfx(Assets.DREAMY);
			
			channelBase = new Sfx(Assets.SPAGHETTI);
			
			//channelBase = new Sfx(Assets.SPAGHETTI);
			
			textBox = new Entity ();
			
			textBox.width = 20;
			textBox.height = 20;
			textBox.x = (FP.engine.width - textBox.width) / 2;
			textBox.y = (FP.engine.height - textBox.height) / 2;
			
			shade = new Entity();
			shade.addGraphic (Image.createRect (FP.engine.width, FP.engine.height, 0x000000, 0.7));
			
			textBox.addGraphic(textField);
			
			add (textBox);
			
			add (helperDL);
			add (helperDR);
			add (helperUR);
			add (helperUL);
			
			//trace (channel1.length);
			//trace (channel2.length);
			//trace (channelBase.length);
			//trace (channelBase.length);
			
			//channel1.complete = function () : void
			//{
				//loadStage();
				//start = 4;
				//bStart = false;
			//}
		}
		
		private function getHelper (code : int) : Helper
		{
			switch (code)
			{
				case 0:
					return helperUL;
					break;
				case 1:
					return helperUR;
					break;
				case 2:
					return helperDL;
					break;
				case 3:
					return helperDR;
					break;
				default:
					trace ("RETURN");
					break;
			}
			return null;
		}
		
		private function loadStage () : void
		{
			helperDL = new Helper (Helper.DL);
			helperDR = new Helper (Helper.DR);
			helperUR = new Helper (Helper.UR);
			helperUL = new Helper (Helper.UL);
			
			arNotes = [];
			xmlLoader = new XmlLoader(new Assets.FASE_3);
			xmlLoader.load();
			
			bpm = xmlLoader.bpm;
			valsPerBeat = xmlLoader.npb;
			noteSpeed = (HELPER_RX - HELPER_LX) / (xmlLoader.lapse / (bpm * PER_SECOND * valsPerBeat));
			
			var i : int = 0;
			var length : int = xmlLoader.noteList.length;
			var n : Note;
			
			for (i = 0; i < length; i++)
			{
				n = new Note (xmlLoader.noteList[i].beat, getHelper (xmlLoader.noteList[i].helper));
				arNotes.push(n);
				//trace (n.time);
			}
			
			i = 0;
			length = xmlLoader.eventList.length;
			
			for (i = 0; i < length; i++)
			{
				if (xmlLoader.eventList[i].name && xmlLoader.eventList[i].name.indexOf("note_") >= 0)
				{
					var arCode : Array = xmlLoader.eventList[i].name.split("_");
					var evt : AddHorizontalSlide;
					if (arCode[1] == "UL" || arCode[1] == "DL")
						evt = new AddHorizontalSlide (xmlLoader.eventList[i].beat, arCode[1], HELPER_LX + (3 * xmlLoader.lapse / (bpm * PER_SECOND * valsPerBeat)) * noteSpeed);
					else
						evt = new AddHorizontalSlide (xmlLoader.eventList[i].beat, arCode[1], HELPER_RX + (2 * xmlLoader.lapse / (bpm * PER_SECOND * valsPerBeat)) * noteSpeed);
					arEvents.push(evt);
				}
			}
		}
		
		override public function update():void 
		{
			if (start > 0)
			{
				start -= FP.elapsed;
				if (start < 0)
				{
					textField.text = "START";
				}
				else if (start < 1)
				{
					textField.text = "1";
				}
				else if (start < 2)
				{
					textField.text = "2";
				}
				else if (start < 3)
				{
					textField.text = "3";
				}
				return;
			}
			else if (!bStart)
			{
				bStart = true;
				bInsert = true;
				//channel1.play();
				//channel2.play();
				channelBase.play();
			}
			
			if (Input.pressed("ESC"))
			{
				if (!bPaused)
				{
					//channel1.stop();
					//channel2.stop();
					channelBase.stop();
					_menu.disabled = false;
					add (shade);
					add (_menu);
					bPaused = true;
				}
			}
			
			if (bPaused) 
			{
				_menu.update();
				return;
			}
			
			super.update();
			timer += FP.elapsed;
			
			var arRemoved : Array = [];
			var instant : Number = channelBase.position * bpm * PER_SECOND * valsPerBeat;
			if (arNotes.length == 1)
					{
						//trace (instant);
						//trace (n.time + missInterval * valsPerBeat);
					}
			//trace (channel1.position * bpm);
			
			for (var j : int = 0; j < arEvents.length; j++)
			{
				//trace ("ASDASDASDASD");
				//trace (instant);
				//trace (arEvents[j].time);
				if (instant > arEvents[j].time && arEvents[j].time >= 0)
				{
					//trace (arEvents[j].time);
					arEvents[j].trigger();
					arRemoved.push(arEvents[j]);
				}
			}
			//trace ("asdasd");
			
			for each (var evt : IEvent in arRemoved)
			{
				arEvents.splice(arEvents.indexOf(evt), 1);
			}
			arRemoved = [];
			
			//if (instant % 1 >= 0 && instant % 1 <= 0.5 &&!debugInstant)
			//{
				//debugInstant = true;
				//textField.text = "PULSE";
				//timer = 0;
			//}
			//else if (instant % 1 > 0.5)
			//{
				//debugInstant = false;
			//}
			
			for (var i : int = 0; i < arNotes.length; i++)
			{
				var n : Note = arNotes[i];
				//if (Input.pressed(Key.UP) || Input.pressed(Key.DOWN))
				//{
					//trace (instant);
					//trace (Math.max (0, n.time - rightInterval * valsPerBeat));
					//trace (Math.min(channelBase.length * valsPerBeat * bpm * PER_SECOND, n.time + rightInterval * valsPerBeat));
				//}
				if (instant < Math.max(0, n.time - missInterval * valsPerBeat))
					break;
				else
				{
					if ((!Input.pressed(n.helper.code) && instant < n.time + missInterval * valsPerBeat) 
							|| (Input.pressed(n.helper.code) && !isInsideInterval(instant, Math.max (0, n.time - missInterval * valsPerBeat), n.time + missInterval * valsPerBeat)))
					{
						//if (Input.pressed(n.helper.code))
						//{
							//trace (instant);
							//trace (Math.max (0, n.time - missInterval * valsPerBeat));
							//trace (Math.min(channel1.length * valsPerBeat, n.time + missInterval * valsPerBeat));
							//trace ("CONTINUE " + instant);
						//}
						//NADA
					}
					else if (!Input.pressed(n.helper.code) && instant >= n.time + missInterval * valsPerBeat)
					{
						trace ("PASS " + n.time);
						textField.text = "PASS " + n.time;
						n.helper.wrong();
						arRemoved.push (n);
						timer = 0;
					}
					else 
					{
						if (isInsideInterval(instant, Math.max (0, n.time - rightInterval * valsPerBeat), n.time + rightInterval * valsPerBeat))
						{
							trace ("RIGHT " + n.time);
							textField.text = "RIGHT " + n.time;
							n.helper.correct();
							arRemoved.push (n);
							timer = 0;
						}
						else
						{
							trace ("MISS " + n.time);
							textField.text = "MISS " + n.time;
							n.helper.wrong();
							arRemoved.push (n);
							timer = 0;
						}
					}
				}
			}
			
			for each (var note : Note in arRemoved)
			{
				arNotes.splice(arNotes.indexOf(note), 1);
				//trace (arNotes.length);
			}
			
			if (timer > 0.05)
			{
				textField.text = "";
			}
			
		}
		
		override public function render():void 
		{
			//Draw.line(HELPER_LX, 0, HELPER_LX, 600);
			//Draw.line(HELPER_RX, 0, HELPER_RX, 600);
			super.render();
		}
		
		public function isInsideInterval (value : Number, min : Number, max : Number) : Boolean
		{
			return (value >= min && value <= max);
		}
		
	}

}