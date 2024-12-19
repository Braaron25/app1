pageextension 50200 ProviderCard extends "Vendor Card"
{
    layout
    {
        addafter("Balance Due (LCY)")
        {
            field("Provider Catalog Code"; Rec."Provider Catalog Code")
            {
                ApplicationArea = All;
                Caption = 'Vendor Catalog Code';
            }
            field("Provider Catalog Name"; Rec."Provider Catalogue Name")
            {
                ApplicationArea = All;
                Caption = 'Vendor Catalog Name';
            }
        }
    }

    trigger OnOpenPage();
    var
        CodeUnit: Codeunit ProviderCatalog;
    begin
        CodeUnit.InsertDefaultValues();
    end;
}
