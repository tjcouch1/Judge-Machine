file = file_text_open_append("JudgeRecords.txt");
file_text_writeln(file);
file_text_writeln(file);
file_text_write_string(file, "Judge: " + judgename + ". " + "Game Number: " + string(gamecurrent) + ".");
file_text_writeln(file);
for (a = 0; a < 6; a += 1;)
{
    file_text_write_string(file, category[a] + ": " + string(categorycurrent[a]));
    file_text_writeln(file);
}
file_text_write_string(file, "Average: " + string(average));
file_text_writeln(file);
file_text_write_string(file, "Comments for the maker: " + user_input);
file_text_close(file);
