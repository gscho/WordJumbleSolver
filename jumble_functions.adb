with ada.Text_IO; use ada.Text_IO;
with ada.strings.unbounded; use ada.strings.unbounded;
with ada.strings.unbounded.Text_IO; use ada.strings.unbounded.Text_IO;
with Ada.Strings.Maps.Constants;
with Ada.Strings.Fixed;
package body jumble_functions is

	procedure find_matches(key : in string; len : in integer) is
		infp : file_type;
		buff : unbounded_string;
		result : string(1..len);
		ln : integer;
		begin
		open(infp,in_file,"words.txt");
			loop
				exit when end_of_file(infp);
				get_line(infp,buff);
				ln := length(buff);
				if ln = len then
					result:= to_string(buff);
					print_matches(key,result,len);
				end if;
			end loop;
		close(infp);
		end find_matches;
		
	procedure print_matches(key : in string; result : in string; len : in integer) is
		str1 : array(integer range 1..26) of integer := (1..26 => 0);
		str2 : array(integer range 1..26) of integer := (1..26 => 0);
		keyLower : string := Ada.Strings.Fixed.Translate(key,Ada.Strings.Maps.Constants.Lower_Case_Map);
		resLower : string := Ada.Strings.Fixed.Translate(result,Ada.Strings.Maps.Constants.Lower_Case_Map);
		i : integer := 0;
		equal : Boolean := true;
		begin
			loop
				exit when i = len;
				if keyLower(keyLower'first+i) = 'a' then
					str1(1) := str1(1) + 1;
				elsif keyLower(keyLower'first+i) = 'b' then
					str1(2) := str1(2) + 1;
				elsif keyLower(keyLower'first+i) = 'c' then
					str1(3) := str1(3) + 1;
				elsif keyLower(keyLower'first+i) = 'd' then
					str1(4) := str1(4) + 1;
				elsif keyLower(keyLower'first+i) = 'e' then
					str1(5) := str1(5) + 1;
				elsif keyLower(keyLower'first+i) = 'f' then
					str1(6) := str1(6) + 1;
				elsif keyLower(keyLower'first+i) = 'g' then
					str1(7) := str1(7) + 1;
				elsif keyLower(keyLower'first+i) = 'h' then
					str1(8) := str1(8) + 1;
				elsif keyLower(keyLower'first+i) = 'i' then
					str1(9) := str1(9) + 1;
				elsif keyLower(keyLower'first+i) = 'j' then
					str1(10) := str1(10) + 1;
				elsif keyLower(keyLower'first+i) = 'k' then
					str1(11) := str1(11) + 1;
				elsif keyLower(keyLower'first+i) = 'l' then
					str1(12) := str1(12) + 1;
				elsif keyLower(keyLower'first+i) = 'm' then
					str1(13) := str1(13) + 1;
				elsif keyLower(keyLower'first+i) = 'n' then
					str1(14) := str1(14) + 1;
				elsif keyLower(keyLower'first+i) = 'o' then
					str1(15) := str1(15) + 1;
				elsif keyLower(keyLower'first+i) = 'p' then
					str1(16) := str1(16) + 1;
				elsif keyLower(keyLower'first+i) = 'q' then
					str1(17) := str1(17) + 1;
				elsif keyLower(keyLower'first+i) = 'r' then
					str1(18) := str1(18) + 1;
				elsif keyLower(keyLower'first+i) = 's' then
					str1(19) := str1(19) + 1;
				elsif keyLower(keyLower'first+i) = 't' then
					str1(20) := str1(20) + 1;
				elsif keyLower(keyLower'first+i) = 'u' then
					str1(21) := str1(21) + 1;
				elsif keyLower(keyLower'first+i) = 'v' then
					str1(22) := str1(22) + 1;
				elsif keyLower(keyLower'first+i) = 'w' then
					str1(23) := str1(23) + 1;
				elsif keyLower(keyLower'first+i) = 'x' then
					str1(24) := str1(24) + 1;
				elsif keyLower(keyLower'first+i) = 'y' then
					str1(25) := str1(25) + 1;
				elsif keyLower(keyLower'first+i) = 'z' then
					str1(26) := str1(26) + 1;
				end if;				
				i := i + 1;
			end loop;
			i := 0;
			loop
				exit when i = len;
				if resLower(resLower'first+i) = 'a' then
					str2(1) := str2(1) + 1;
				elsif resLower(resLower'first+i) = 'b' then
					str2(2) := str2(2) + 1;
				elsif resLower(resLower'first+i) = 'c' then
					str2(3) := str2(3) + 1;
				elsif resLower(resLower'first+i) = 'd' then
					str2(4) := str2(4) + 1;
				elsif resLower(resLower'first+i) = 'e' then
					str2(5) := str2(5) + 1;
				elsif resLower(resLower'first+i) = 'f' then
					str2(6) := str2(6) + 1;
				elsif resLower(resLower'first+i) = 'g' then
					str2(7) := str2(7) + 1;
				elsif resLower(resLower'first+i) = 'h' then
					str2(8) := str2(8) + 1;
				elsif resLower(resLower'first+i) = 'i' then
					str2(9) := str2(9) + 1;
				elsif resLower(resLower'first+i) = 'j' then
					str2(10) := str2(10) + 1;
				elsif resLower(resLower'first+i) = 'k' then
					str2(11) := str2(11) + 1;
				elsif resLower(resLower'first+i) = 'l' then
					str2(12) := str2(12) + 1;
				elsif resLower(resLower'first+i) = 'm' then
					str2(13) := str2(13) + 1;
				elsif resLower(resLower'first+i) = 'n' then
					str2(14) := str2(14) + 1;
				elsif resLower(resLower'first+i) = 'o' then
					str2(15) := str2(15) + 1;
				elsif resLower(resLower'first+i) = 'p' then
					str2(16) := str2(16) + 1;
				elsif resLower(resLower'first+i) = 'q' then
					str2(17) := str2(17) + 1;
				elsif resLower(resLower'first+i) = 'r' then
					str2(18) := str2(18) + 1;
				elsif resLower(resLower'first+i) = 's' then
					str2(19) := str2(19) + 1;
				elsif resLower(resLower'first+i) = 't' then
					str2(20) := str2(20) + 1;
				elsif resLower(resLower'first+i) = 'u' then
					str2(21) := str2(21) + 1;
				elsif resLower(resLower'first+i) = 'v' then
					str2(22) := str2(22) + 1;
				elsif resLower(resLower'first+i) = 'w' then	
					str2(23) := str2(23) + 1;
				elsif resLower(resLower'first+i) = 'x' then
					str2(24) := str2(24) + 1;
				elsif resLower(resLower'first+i) = 'y' then
					str2(25) := str2(25) + 1;
				elsif resLower(resLower'first+i) = 'z' then
					str2(26) := str2(26) + 1;
				end if;				
				i := i + 1;
			end loop;
			i := 1;
			while equal = true and i <= 26 loop
				if str1(i) /= str2(i) then
					equal := false;
				end if;
				i := i + 1;
			end loop;
			if equal = true then
				put("Possible Match: " & resLower(resLower'first..resLower'length));new_line;
			end if;
		end print_matches;
		
		function saved_matches(s : in unbounded_string) return unbounded_string is
			saved : unbounded_string := s;
			newword : unbounded_string;
			ch : string(1..1);
			last : integer;
			begin
				put("Saved matches:" & saved);new_line;
				put("Save a new word? (Y/n)? ");new_line;
				get_line(ch,last);
				get_line(ch,last);
				if ch = "Y" or ch = "y" then
					put("Enter word: ");
					get_line(newword);
					newword := " " & newword;
					saved := saved & newword;
				end if;
				return(saved);				
		end saved_matches;
end jumble_functions;
