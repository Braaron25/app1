codeunit 50228 "Add Social Media"
{
    procedure AddDefaultSocialMediaToCustomer(CustomerNo: Code[20]): Text
    var
        Customer: Record Customer;
        SocialMedia: Record "Social Media";
    begin
        if Customer.Get(CustomerNo) then begin
            if SocialMedia.FindFirst() then begin
                Customer."Social Media Code 1" := SocialMedia.Code;
                Customer."Social Media Link 1" := 'Por Definir';
                Customer.Modify(true);
            end else begin
                Error('No existe ningúna red social creada. Por favor, cree al menos una red social.');
            end;
        end else begin
            Error('El cliente con el número %1 no existe.', CustomerNo);
        end;
    end;

    procedure AddDefaultSocialMediaLinkToCustomer(CustomerNo: Code[20]): Text
    var
        Customer: Record Customer;
    begin
        if Customer.Get(CustomerNo) then begin
            Customer."Social Media Link 1" := 'Por Definir';
            Customer.Modify(true);
        end else begin
            Error('El cliente con el número %1 no existe.', CustomerNo);
        end;
    end;
}
