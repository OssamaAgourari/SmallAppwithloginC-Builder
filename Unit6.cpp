#include <vcl.h>
#pragma hdrstop
#include "Unit6.h"
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm6 *Form6;

__fastcall TForm6::TForm6(TComponent* Owner)
    : TForm(Owner)
{
}

void __fastcall TForm6::FormShow(TObject *Sender)
{
    // Prepare the query to fetch available spots
    ADOQuery1->Connection = ADOConnection1; // Assuming ADOConnection1 is set up
    ADOQuery1->SQL->Text = "SELECT numero AS `Spot Number` FROM Place WHERE disponibilite = 'D'";
    ADOQuery1->Open();

	// Link the query results to the DBGrid
	DataSource1->DataSet = ADOQuery1;
	DBGrid1->DataSource = DataSource1;
}

void __fastcall TForm6::Button1Click(TObject *Sender)
{
	// Reserve the selected parking spot
	if (!ADOQuery1->IsEmpty()) {
		AnsiString selectedSpot = ADOQuery1->FieldByName("numero")->AsString;

		// Update the database to mark the spot as reserved
		TADOQuery *updateQuery = new TADOQuery(this);
		updateQuery->Connection = ADOConnection1;
		updateQuery->SQL->Text = "UPDATE Place SET disponibilite = 'N' WHERE numero = :numero";
		updateQuery->Parameters->ParamByName("numero")->Value = selectedSpot;
		updateQuery->ExecSQL();
		delete updateQuery;

		// Refresh the DBGrid
		ADOQuery1->Close();
		ADOQuery1->Open();

		ShowMessage("Place reserved successfully!");
	} else {
		ShowMessage("No spot selected!");
	}
}
//---------------------------------------------------------------------------


void __fastcall TForm6::Button2Click(TObject *Sender)
{     try{
	ADOQuery1->Close(); // Close the query if it’s open
        ADOQuery1->Open();  // Reopen the query to fetch updated data
        ShowMessage("Data refreshed successfully!");
	} catch (const Exception &e) {
        ShowMessage("Error refreshing data: " + e.Message);
	}
}
//---------------------------------------------------------------------------

