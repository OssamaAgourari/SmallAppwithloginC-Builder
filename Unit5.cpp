#include <vcl.h>
#pragma hdrstop
#include "Unit5.h"
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm5 *Form5;

__fastcall TForm5::TForm5(TComponent* Owner)
    : TForm(Owner)
{
}

void __fastcall TForm5::Button1Click(TObject *Sender)
{
    AnsiString numero = Edit1->Text;
    AnsiString etage_id = Edit2->Text;
    AnsiString type = Edit3->Text;

	ADOQuery1->SQL->Clear();
	ADOQuery1->SQL->Add("INSERT INTO Place (numero, etage_id, type, disponibilite) VALUES (:numero, :etage_id, :type, 'D')");
	ADOQuery1->Parameters->ParamByName("numero")->Value = numero;
	ADOQuery1->Parameters->ParamByName("etage_id")->Value = etage_id;
	ADOQuery1->Parameters->ParamByName("type")->Value = type;
	ADOQuery1->ExecSQL();

    ShowMessage("Place ajoutée avec succès!");
	Edit1->Text = "";
    Edit2->Text = "";
    Edit3->Text = "";
}

