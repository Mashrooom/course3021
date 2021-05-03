unit types;
{module with types}

interface
    uses crt;
    const menu_fields_num = 7;
          x = 20;
          y = 10;

    type
        menu_array = array[1..menu_fields_num] of string;

implementation

end.
