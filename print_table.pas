unit print_table;

interface
    uses crt;
    {Print tables head}
    procedure print_head;

    {Print table's bot}
    procedure print_bot;

implementation

    {Print tables head}
    procedure print_head;
    begin
        {Tables head}
        writeln('+==+======================+===========+==========+=============+');
        writeln('| N|     Second name      |   Place   |  Points  | Institution |');
    end;


    {Print table's bot}
    procedure print_bot;
    begin
        {Table's bot}
        writeln('+==+======================+===========+==========+=============+');
    end;


end.