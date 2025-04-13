#include <vcl.h>
#pragma hdrstop
#include "Unit3.h"
#include <FireDAC.Comp.Client.hpp>
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;

__fastcall TForm3::TForm3(TComponent* Owner)
    : TForm(Owner)
{
}

void __fastcall TForm3::Button1Click(TObject *Sender)
{
    AnsiString nom = Edit1->Text;
    AnsiString adresse = Edit2->Text;

    ADOQuery1->Connection = ADOConnection1;
    ADOQuery1->SQL->Clear();
    ADOQuery1->SQL->Add("INSERT INTO Parking (nom, adresse) VALUES (:nom, :adresse)");
    ADOQuery1->Parameters->ParamByName("nom")->Value = nom;
    ADOQuery1->Parameters->ParamByName("adresse")->Value = adresse;
    ADOQuery1->ExecSQL();

    ShowMessage("Parking ajouté avec succès!");

    Edit1->Text = "";
    Edit2->Text = "";
}

