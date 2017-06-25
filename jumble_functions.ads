with ada.strings.unbounded; use ada.strings.unbounded;
package jumble_functions is
	procedure find_matches(key : in string; len : in integer);
	procedure print_matches(key : in string; result : in string; len : in integer);
	function saved_matches(s : in unbounded_string) return unbounded_string	;
end jumble_functions;
