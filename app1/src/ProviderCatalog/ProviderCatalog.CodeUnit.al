codeunit 50200 ProviderCatalog
{
    procedure InsertDefaultValues()
    var
        ProviderCatalog: Record ProviderCatalog;
    begin
        Clear(ProviderCatalog);
        if not ProviderCatalog.IsEmpty then
            exit;
        InsertProviderCatalog('1', 'Manufacturer', 'Manufacturer vendor');
        InsertProviderCatalog('2', 'Services', 'Services vendor');
        InsertProviderCatalog('3', 'Retail', 'Retail vendor');
    end;

    local procedure InsertProviderCatalog(Code: Code[20]; Name: Text[50]; Description: Text[200])
    var
        ProvderCatalog: Record ProviderCatalog;
    begin
        Clear(ProvderCatalog);
        ProvderCatalog.Code := Code;
        ProvderCatalog.Name := Name;
        ProvderCatalog.Description := Description;
        ProvderCatalog.Insert();
    end;
}
