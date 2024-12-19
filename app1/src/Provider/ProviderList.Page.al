pageextension 50201 ProviderList extends "Vendor List"
{
    actions
    {
        addbefore("Ven&dor")
        {
            action("Vendor Catalog")
            {
                ApplicationArea = All;
                Image = VendorCode;
                ToolTip = 'Open vendor catalog list';
                Caption = 'Vendor catalog list';

                trigger OnAction();
                var
                    ProviderCatalogList: Page ProviderCatalogList;
                begin
                    ProviderCatalogList.Run();
                end;
            }
        }
    }
}
