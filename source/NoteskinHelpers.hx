import openfl.display.BitmapData;
import flixel.FlxSprite;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.FlxG;

using StringTools;

class NoteskinHelpers
{
	public static var noteskinArray = [];
	public static var xmlData = [];

	public static function updateNoteskins()
	{
		noteskinArray = [];
		xmlData = [];
		noteskinArray = ["Arrows", "Circles"];
		return noteskinArray;
	}

	public static function getNoteskins()
	{
		return noteskinArray;
	}

	public static function getNoteskinByID(id:Int)
	{
		return noteskinArray[id];
	}

	static public function generateNoteskinSprite(id:Int)
	{
		return Paths.getSparrowAtlas('noteskins/Arrows', "shared");
	}

	static public function generatePixelSprite(id:Int, ends:Bool = false)
	{
		return BitmapData.fromFile(Paths.image('noteskins/Arrows-pixel', "shared"));
	}
}
