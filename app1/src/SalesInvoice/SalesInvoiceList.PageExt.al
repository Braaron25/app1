pageextension 50202 SalesInvoiceList extends "Sales Invoice List"
{

    actions
    {
        addbefore(Reports)
        {
            action(ReportSalesInvoice)
            {
                ApplicationArea = All;
                Image = Report;
                ToolTip = 'Generate Sales Invoice Report';
                Caption = 'Sales Invoice Report';

                trigger OnAction();
                var
                    ReportSalesInvoice: Report SalesInvoice;
                begin
                    ReportSalesInvoice.Run();
                end;
            }
        }
    }
}
