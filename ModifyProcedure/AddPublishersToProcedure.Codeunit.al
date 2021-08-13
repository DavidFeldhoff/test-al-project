codeunit 50115 "AddPublishersToProcedure"
{
    var
        Customer: Record Customer;

    procedure NoParametersNoVarSectionNoReturn()
    begin
        Customer.Get('10000');
    end;

    procedure ParametersNoVarSectionNoReturn(CustomerNo: Code[20])
    begin
        Customer.Get(CustomerNo);
    end;

    procedure ParametersVarSectionNoReturn(CustomerNo: Code[20])
    var
        Customer2: Record Customer;
    begin
        Customer2.Get(CustomerNo);
    end;

    procedure ParametersVarSectionUnnamedReturn(CustomerNo: Code[20]): Record Customer
    var
        Customer2: Record Customer;
    begin
        Customer2.Get(CustomerNo);
        exit(Customer2);
    end;

    procedure ParametersVarSectionNamedReturn(CustomerNo: Code[20]) Customer3: Record Customer
    var
        Customer2: Record Customer;
    begin
        Customer3.Get(CustomerNo);
    end;

    procedure ParametersVarSectionNamedReturnDifferentExit(CustomerNo: Code[20]) Customer3: Record Customer
    var
        Customer2: Record Customer;
    begin
        Customer2.Get(CustomerNo);
        exit(Customer2);
    end;

    procedure ParametersVarSectionUnnamedReturnMemberAccess(CustomerNo: Code[20]): Decimal
    var
        Customer2: Record Customer;
    begin
        Customer2.Get(CustomerNo);
        exit(Customer2.Amount);
    end;

    procedure ParametersVarSectionUnnamedReturnSimpleType(CustomerNo: Code[20]): Integer
    var
        myInt: Integer;
    begin
        myInt := 5;
        exit(myInt);
    end;

    procedure ParametersVarSectionUnnamedReturnConstant(CustomerNo: Code[20]): Integer
    var
        myInt: Integer;
    begin
        myInt := 5;
        exit(6);
    end;
}