program create_md;
type
    spisok = (yaselnaya, mladshaya, srednaya, starshaya);
    a = ^list2;
    
    list = record
        shifr: string;
        children: integer;
        fam_vaspitatelya: string;
        group_type: spisok;
    end;

    list2 = record
        value: list;
        next: a;
    end;

    file1 = file of list;

var start:a;

/////////////////////////////////////////////////////////////

{Create a list in dynamic memory}
procedure create_list(var start:a);
var n, i:integer;
    work:a;
begin
    {Enter the number of list}
    writeln('Enter the number of list items');
    readln(n);

    {create first element of list}
    new(start);
    writeln('Enter shifr gruppi');
    readln(start^.value.shifr);
    writeln('Enter children count');
    readln(start^.value.children);
    writeln('Enter teacher second name');
    readln(start^.value.fam_vaspitatelya);
    writeln('Enter group type');
    readln(start^.value.group_type);
    start^.next := nil;
    work := start;
    {create next element of list}
    for i:=2 to n do
        begin
            new(work^.next);
            work := work^.next;
            writeln('Enter shifr gruppi');
            readln(work^.value.shifr);
            writeln('Enter children count');
            readln(work^.value.children);
            writeln('Enter teacher second name');
            readln(work^.value.fam_vaspitatelya);
            writeln('Enter group type');
            readln(work^.value.group_type);
            work^.next := nil;
        end;
    {end for i}
end;

{Write dynamic list to file and display it}
procedure write_to_file(work:a);
var f: file1;
    str:list;
begin
    {open file m1.txt for write}
    writeln('Write in file');
    assign(f, 'm1.txt');
    rewrite(f);
    {write data of list to m1.txt}
    repeat
        write(f,work^.value);
        work := work^.next;
    until work = nil;
    close(f);
    {Read from file}
    writeln('Read from file');
    assign(f, 'm1.txt');
    reset(f);
    repeat
        read(f, str);
        write(str.shifr, str.children, str.fam_vaspitatelya, str.group_type);
        writeln();
    until eof(f);
    close(f);
end;

{Read form file into dynamic memory}
// procedure read_in_memory();
// var
// begin
    
// end;

begin
    create_list(start);
    write_to_file(start);

end.
