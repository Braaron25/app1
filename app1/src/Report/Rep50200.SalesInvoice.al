report 50200 SalesInvoice
{
    ApplicationArea = All;
    Caption = 'SalesInvoice';
    UsageCategory = ReportsAndAnalysis;
    DefaultRenderingLayout = SalesInvoice_WORDLayout;

    dataset
    {
        dataitem(SalesInvoiceHeader; "Sales Invoice Header")
        {
            RequestFilterFields = "Sell-to Customer Name", "Order Date", "Due Date", "Document Date";
            column(No; "No.")
            {
            }
            column(SelltoCustomerName; "Sell-to Customer Name")
            {
            }
            column(OrderDate; "Order Date")
            {
            }
            column(DueDate; "Due Date")
            {
            }
            column(DocumentDate; "Document Date")
            {
            }
            column(AmountIncludingVAT; "Amount Including VAT")
            {
            }
        }
    }
    rendering
    {
        layout(SalesInvoice_WORDLayout)
        {
            Type = Word;
            LayoutFile = './src/Report/layouts/SalesInvoice_WORDLayout.docx';
            Caption = 'SalesInvoiceList';
            Summary = 'An example of an Word Layout.';
        }
    }
}
