program main;
uses crt, print_table, types, menu, procedures;

var k:integer;
    str_menu_array:menu_array = ('Add new element', 'Print current MD', 
    'Fing element', 'Swap MD', 'Create new MD with key field', 
    'Add all elements of curent MD to the end of 2nd MD', 'Exit program');

begin
    k:=1;
    repeat
        clrscr;
        {Print head}
        print_head;

        print_bot;

        {Menu implementation}
        k:=print_menu(str_menu_array, menu_fields_num, x, y);
        case k of
            {Add new element to the end of the curent MD}
            1:add_new_el();
            {Print all elements of the curent MD }
            2:print_current_md();
            {Find element by index}
            3:find_el();
            {Swap working MD}
            4:swap_md();
            {Create new MD form all elements with key field}
            5:create_new_md();
            {Add all elements from the current MD to the end of the 2nd MD}
            6:adding_all_to_second_md();
            {Exit program}
            7:  begin
                    clrscr;
                    break;
                end;
        end;
        writeln('Enter any key...');
        readln();
    until false;
end.