page 50224 "Social Media List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Social Media";
    Caption = 'Administración de Redes Sociales';
    CardPageId = "Social Media Card";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Code"; Rec."Code")
                {
                    Caption = 'Código';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Name"; Rec."Name")
                {
                    Caption = 'Nombre';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Description"; Rec."Description")
                {
                    Caption = 'Descripción';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }
}