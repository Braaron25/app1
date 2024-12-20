pageextension 50225 "Social Media Card" extends "Customer Card"
{
    layout
    {
        addafter(General)
        {
            group(SocialMedia)
            {
                Caption = 'Redes Sociales';
                field("Social Media Code 1"; Rec."Social Media Code 1")
                {
                    Caption = 'Código de la Red Social 1';
                    Description = 'El código único de la red social';
                    ToolTip = 'Si no aparece ninguna opción cree la red social desde la página de administración de redes sociales';
                    ApplicationArea = All;
                }
                field("Social Media Link 1"; Rec."Social Media Link 1")
                {
                    Caption = 'Link de la Red Social 1';
                    Description = 'El enlace a su red social';
                    ToolTip = 'En el perfil de su red social seleccionada puede obtener el enlace';
                    ApplicationArea = All;
                }
                field("Social Media Code 2"; Rec."Social Media Code 2")
                {
                    Caption = 'Código de la Red Social 2';
                    Description = 'El código único de la red social';
                    ToolTip = 'Si no aparece ninguna opción cree la red social desde la página de administración de redes sociales';
                    ApplicationArea = All;
                }
                field("Social Media Link 2"; Rec."Social Media Link 2")
                {
                    Caption = 'Link de la Red Social 2';
                    Description = 'El enlace a su red social';
                    ToolTip = 'En el perfil de su red social seleccionada puede obtener el enlace';
                    ApplicationArea = All;
                }
            }
        }
    }
}