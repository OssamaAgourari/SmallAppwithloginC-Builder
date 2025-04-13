#include <vcl.h>
#pragma hdrstop
#include "Unit4.h"
#include <FireDAC.Comp.Client.hpp>
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm4 *Form4;

__fastcall TForm4::TForm4(TComponent* Owner)
    : TForm(Owner)
{
}

void __fastcall TForm4::Button1Click(TObject *Sender)
{
	AnsiString parking_id = Edit1->Text;
	AnsiString nombrePlaces = Edit2->Text;

	ADOQuery1->Connection = ADOConnection1;
	ADOQuery1->SQL->Clear();
	ADOQuery1->SQL->Add("INSERT INTO Etage (parking_id, nombrePlaces) VALUES (:parking_id, :nombrePlaces)");
	ADOQuery1->Parameters->ParamByName("parking_id")->Value = parking_id;
    ADOQuery1->Parameters->ParamByName("nombrePlaces")->Value = nombrePlaces;
    ADOQuery1->ExecSQL();

    ShowMessage("Étage ajouté avec succès!");

    Edit1->Text = "";
    Edit2->Text = "";
}

