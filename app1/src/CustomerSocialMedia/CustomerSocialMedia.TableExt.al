tableextension 50225 "Customer SocialMedia Table Ext" extends Customer
{
    fields
    {
        field(50225; "Social Media Code 1"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Código de Red Social 1';
            TableRelation = "Social Media".Code;
        }
        field(50226; "Social Media Link 1"; Text[80])
        {
            DataClassification = CustomerContent;
            Caption = 'Link Red Social 1';
        }
        field(50227; "Social Media Code 2"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Código de Red Social 2';
            TableRelation = "Social Media".Code;
        }
        field(50228; "Social Media Link 2"; Text[80])
        {
            DataClassification = CustomerContent;
            Caption = 'Link Red Social 2';
        }
    }
}