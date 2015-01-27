state("Love-Steam")
{
	int LevelID : "Love-Steam.exe", 0x3C8BF8;
}

start
{	
	return current.LevelID == 5;
}

split
{
	return old.LevelID == current.LevelID - 1;
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
