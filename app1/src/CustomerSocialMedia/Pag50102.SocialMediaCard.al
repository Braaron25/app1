page 50205 "Social Media Card"
{
    ApplicationArea = All;
    Caption = 'SocialMediaCard';
    PageType = Card;
    SourceTable = "Social Media";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Code"; Rec."Code")
                {
                    Caption = 'Código';
                    ApplicationArea = All;
                    NotBlank = true;
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Nombre';
                    ApplicationArea = All;
                    NotBlank = true;
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Descripción';
                    ApplicationArea = All;
                    NotBlank = true;
                }
            }
        }
    }
}
