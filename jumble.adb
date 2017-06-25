with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with jumble_functions; use jumble_functions;
with ada.strings.unbounded; use ada.strings.unbounded;
with ada.strings.unbounded.Text_IO; use ada.strings.unbounded.Text_IO;

procedure jumble is
	choice : string(1..1);
	one : string:="1";
	two : string:="2";
	three : string:="3";
	last : integer;
	check : boolean;
	key : string(1..46);
	saved : unbounded_string;
begin
	loop
		put("Select from the following");new_line;
		put("1. Enter word to un-jumble");new_line;
		put("2. View/Add saved words");new_line;
		put("3. Exit");new_line;
		get_line(choice,last);
		get_line(choice,last);
		if choice = one then
			put("Enter word: ");
			get_Line(key,Last);
			find_matches(key,last);
		elsif choice = two then
			saved := saved_matches(saved);
		elsif choice = three then
			put("Exit Successful");new_line;
		else
			put("Please enter a valid number");new_line;
		end if;
		exit when choice = three;
	end loop;
end jumble;
