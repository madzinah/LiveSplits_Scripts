state("Box out")
{
	// Going from 2 for level 1-1 to 121 for level 12-10
	int LevelID : "Box out.exe", 0x50F300;
}

start
{
	return current.LevelID == 2;
}

split
{
  return current.LevelID > 2 && (current.LevelID % 12 - 2 == 0 && old.LevelID != current.LevelID)
			|| (old.LevelID == 121 && current.LevelID == 1 );
}

reset
{

}

isLoading
{

}

gameTime
{

}
