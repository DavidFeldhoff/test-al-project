table 50100 MyTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; MyField; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myPage: Page VendorPage;
                myBoolean: Boolean;
            begin
                myBoolean := CreatableProcedure1(MyField);
                Page.RunModal(Page::VendorPage, Rec);
                MissingProcedureWithRecsAsParameter(Rec, xRec);

                with Rec do
                    myBoolean := MyField = 5;

                Insert(true); //implicit Rec
                Insert(false); //shouldn't be referenced
                with Rec do
                    Insert(true); //explicit Rec
            end;
        }
    }

    keys
    {
        key(PK; MyField)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        MyField := CreatableProcedure2(MyField, myInt);
    end;

    trigger OnModify()
    begin

    end;

    trigger OnRename()
    begin

    end;

    var
        PageManagement: Codeunit "Page Management";

    procedure myInsertTestProcedure()
    begin
        Init();
        Insert(true);
        Rec.GetLastOne().Insert(true);
    end;

    procedure
    GetLastOne(


   )
   LastTableData
   : Record MyTable
    begin

    end;
}