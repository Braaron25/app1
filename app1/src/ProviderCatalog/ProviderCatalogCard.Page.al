page 50200 ProviderCatalogCard
{
    ApplicationArea = All;
    Caption = 'ProviderCatalogCard';
    PageType = Card;
    SourceTable = ProviderCatalog;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Code"; Rec."Code")
                {
                    Caption = 'Code';
                    ToolTip = 'Code of vendor catalog';
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Name';
                    ToolTip = 'Name of vendor catalog';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                    ToolTip = 'Description of vendor catalog';
                }
            }
        }
    }

}
