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
        writeln('+==+==============+=====================+========================+==============+');
        writeln('| N|  Group code  |   Children number   |      Teacher name      |  Group type  |');
    end;


    {Print table's bot}
    procedure print_bot;
    begin
        {Table's bot}
        writeln('+==+==============+=====================+========================+==============+');
    end;


end.