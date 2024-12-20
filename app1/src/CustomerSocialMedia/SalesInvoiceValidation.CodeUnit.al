codeunit 50229 "Sales Invoice Validation"
{
    var
        CustomerNoGlobal: Code[20];

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', true, true)]
    local procedure ValidateSocialMediaFields(SalesHeader: Record "Sales Header")
    var
        Customer: Record Customer;
        FixitErrorCodeInfo: ErrorInfo;
        FixitErrorLinkInfo: ErrorInfo;
        AddSocialMedia: Text[100];
    begin
        Customer.Get(SalesHeader."Sell-to Customer No.");
        CustomerNoGlobal := Customer."No.";

        if ((Customer."Social Media Code 1" = '') and (Customer."Social Media Code 2" = '')) then begin
            FixitErrorCodeInfo.Title('El cliente no tiene registrada una red social.');
            FixitErrorCodeInfo.Message(
                StrSubstNo('El campo "Código de Red Social" debe estar lleno en la información del cliente %1', Customer.Name)
            );
            FixitErrorCodeInfo.DetailedMessage('Seleccione al cliente y agregue al menos una red social en la sección de Redes Sociales.');

            FixitErrorCodeInfo.AddAction(
                'Agregue una red social por defecto',
                Codeunit::"Sales Invoice Validation",
                AddDefaultSocialMediaToCustomerHandler
            );
            Error(FixitErrorCodeInfo);
        end;
        if ((Customer."Social Media Link 1" = '') and (Customer."Social Media Link 2" = '')) then begin
            FixitErrorLinkInfo.Title('El cliente no tiene registrado ningún link de una red social.');
            FixitErrorLinkInfo.Message(
                StrSubstNo('El campo "Link de Red Social" debe estar lleno en la información del cliente %1', Customer.Name)
            );
            FixitErrorLinkInfo.DetailedMessage('Seleccione al cliente y agregue al menos una red social con su link en la sección de Redes Sociales.');

            FixitErrorLinkInfo.AddAction(
                'Agregue una red social por defecto',
                Codeunit::"Sales Invoice Validation",
                AddDefaultSocialMediaToCustomerHandler
            );
            Error(FixitErrorLinkInfo);
        end;
    end;

    local procedure AddDefaultSocialMediaToCustomerHandler(): Text
    var
        AddSocialMedia: Codeunit "Add Social Media";
    begin
        AddSocialMedia.AddDefaultSocialMediaToCustomer(CustomerNoGlobal);
    end;


    local procedure AddDefaultSocialMediaLinkToCustomerHandler(): Text
    var
        AddSocialMedia: Codeunit "Add Social Media";
    begin
        AddSocialMedia.AddDefaultSocialMediaLinkToCustomer(CustomerNoGlobal);
    end;

}
