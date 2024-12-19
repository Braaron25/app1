page 50201 ProviderCatalogList
{
    ApplicationArea = All;
    Caption = 'ProviderCatalogList';
    PageType = List;
    SourceTable = ProviderCatalog;
    UsageCategory = Lists;
    //Editable = false;
    CardPageId = ProviderCatalogCard;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    Caption = 'Code';
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Name';
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Desciption';
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }
        }
    }
}
