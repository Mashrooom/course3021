unit create_md;
{create md on physical memory and load it to dynamic memory}

interface
    uses table, types, crt;

    {create md}
    procedure new_md();

    {load md}
    procedure load_md();

implementation