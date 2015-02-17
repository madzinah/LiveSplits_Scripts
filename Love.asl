state("Love-Steam")
{	
	// Going from 5 for level 1 to 22 for the score screen
	int LevelID : "Love-Steam.exe", 0x506F58;
}

start
{	
	return current.LevelID == 5;
}

split
{
	return current.LevelID == old.LevelID + 1;
}

reset
{
	return current.LevelID == 3 || current.LevelID == 2;
}

isLoading
{

}

gameTime
{

}
