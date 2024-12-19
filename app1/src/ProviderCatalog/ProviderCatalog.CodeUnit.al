codeunit 50200 ProviderCatalog
{
    procedure InsertDefaultValues()
    var
        ProviderCatalog: Record ProviderCatalog;
    begin
        Clear(ProviderCatalog);
        if not ProviderCatalog.IsEmpty then
            exit;
        InsertProviderCatalog('1', 'Bienes', 'Proveedor de bienes');
        InsertProviderCatalog('2', 'Servicios', 'Proveedor de servicios');
        InsertProviderCatalog('3', 'Recursos', 'Proveedor de recursos');
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
