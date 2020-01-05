//First Line has Comments	Line 0
codeunit 50100 "FirstCodeunit"
{
    trigger onRun()
    begin
        myProcedure(5);
    end;

    local procedure myProcedure(intParameter: Integer)
    var
        myInt: Integer;
    begin
        myInt := intParameter;
    end;

    local procedure procedureCalls()
    var
        SecondCodeunit: Codeunit SecondCodeunit;
        myText: Text[20];
    begin
        MissingProcedureWithoutParameters();

        MissingProcedureWithParameter(myInteger);

        MissingProcedureWithParameters(myInteger, myBoolean);

        myText := MissingProcedureWithReturn(myInteger);

        SecondCodeunit.MissingProcedureOfOtherObject(myInteger, myBoolean);

        myText := SecondCodeunit.MissingProcedureOfOtherObjectWithReturn(myInteger, myBoolean);

        MissingProcedureWithProcedureCallInside(myProcedure(5));

        myProcedure(MissingProcedureWithDirectlyUsedReturnValue());

        MultilineProcedureCall(
            myInt,
            myBoolean
        );
    end;

    var
        myInteger: Integer;
        myBoolean: Boolean;
}