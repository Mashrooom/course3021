unit procedures;

interface

    uses types, crt, print_table;
    {Add new element to the end of the curent MD}
    procedure add_new_el();
    {Print all elements of the curent MD }
    procedure print_current_md();
    {Find element by index}
    procedure find_el();
    {Swap working MD}
    procedure swap_md();
    {Create new MD form all elements with key field}
    procedure create_new_md();
    {Add all elements from the current MD to the end of the 2nd MD}
    procedure adding_all_to_second_md();

implementation
    {Add new element to the end of the curent MD}
    procedure add_new_el();
    var a:byte;
    begin
        writeln('add_new_el procedure');
        readln();
    end;

    {Print all elements of the curent MD }
    procedure print_current_md();
    var a:byte;
    begin
        writeln('print_current_md procedure');
        readln();
    end;

    {Find element by index}
    procedure find_el();
    var a:byte;
    begin
        writeln('find_el procedure');
        readln();
    end;

    {Swap working MD}
    procedure swap_md();
    var a:byte;
    begin
        writeln('swap_md procedure');
        readln();
    end;

    {Create new MD form all elements with key field}
    procedure create_new_md();
    var a:byte;
    begin
        writeln('create_new_md procedure');
        readln();
    end;

    {Add all elements from the current MD to the end of the 2nd MD}
    procedure adding_all_to_second_md();
    var a:byte;
    begin
        writeln('adding_all_to_second_md');
        readln();
    end;
end.