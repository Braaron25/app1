tableextension 50200 Provider extends Vendor
{
    fields
    {
        field(50200; "Provider Catalog Code"; Code[20])
        {
            Caption = 'Provider Catalog Code';
            TableRelation = ProviderCatalog;
            DataClassification = CustomerContent;
        }
        field(50201; "Provider Catalogue Name"; Text[50])
        {
            Caption = 'Provider Catalogue Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(ProviderCatalog.Name where(Code = field("Provider Catalog Code")));

        }
    }

    keys
    {
        key(FK1; "Provider Catalog Code")
        {
        }
    }
}
