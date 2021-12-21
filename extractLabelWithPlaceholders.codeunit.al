codeunit 50116 extractLabelWithPlaceholders
{
    var
        Customer: Record Customer;

    local procedure ExtractLabels()
    begin
        Message('No Local Var Section end.');
        Message('No Local Var Section %1 %3 %2 end.', Customer."No.", Customer."Name 2", Customer.Name);
    end;
}