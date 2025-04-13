#include <vcl.h>
#pragma hdrstop
#include "Unit8.h"
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm8 *Form8;

__fastcall TForm8::TForm8(TComponent* Owner)
    : TForm(Owner)
{
}

void __fastcall TForm8::FormShow(TObject *Sender)
{
    ADOQuery1->Connection = ADOConnection1; // Use the local connection
    ADOQuery1->SQL->Clear();
    ADOQuery1->SQL->Add("SELECT * FROM Place WHERE disponibilite = 'N'");
    ADOQuery1->Open();

    DataSource1->DataSet = ADOQuery1; // Link the DataSource to ADOQuery
}

void __fastcall TForm8::Button1Click(TObject *Sender)
{
try{
ADOQuery1->Close(); // Close the query if it’s open
        ADOQuery1->Open();  // Reopen the query to fetch updated data
        ShowMessage("Data refreshed successfully!");
    } catch (const Exception &e) {
        ShowMessage("Error refreshing data: " + e.Message);
	}
}
//---------------------------------------------------------------------------

