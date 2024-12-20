table 50224 "Social Media"
{
    DataClassification = CustomerContent;
    Caption = 'Social Media Catalog';

    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Código';
        }
        field(2; "Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Nombre';
        }
        field(3; "Description"; Text[80])
        {
            DataClassification = CustomerContent;
            Caption = 'Descripción';
        }
    }

    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }

}