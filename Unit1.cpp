#include <vcl.h>
#pragma hdrstop

#include "Unit1.h" // Include the header for the form class
#include "Unit2.h" // Include the header for the "Gestion de Parking" form

#pragma package(smart_init)
#pragma resource "*.dfm"
TLabel1 *Label1; // Declare the global form instance (TLabel1)

// Constructor
__fastcall TLabel1::TLabel1(TComponent* Owner)
    : TForm(Owner)
{
}

//
// "Se Connecter" button click event
void __fastcall TLabel1::Button1Click(TObject *Sender)
{
	// Get the login and password from the Edit boxes
    AnsiString login = Edit1->Text;
    AnsiString password = Edit2->Text;

    // Query the database to check if the user exists
    ADOQuery1->SQL->Clear();
    ADOQuery1->SQL->Add("SELECT * FROM [User] WHERE Login = :login AND Password = :password");
    ADOQuery1->Parameters->ParamByName("login")->Value = login;
    ADOQuery1->Parameters->ParamByName("password")->Value = password;
    ADOQuery1->Open();

    // Check if a matching user was found
    if (!ADOQuery1->Eof) {
        // Login successful
        Label3->Caption = "Connexion réussie!";
        Label3->Font->Color = clGreen;

        // Redirect to the main management form (Unit2)
        Form2->Show();
        this->Hide(); // Hide the login form
    } else {
        // Login failed
        Label3->Caption = "Le login ou le mot de passe n'existent pas.";
        Label3->Font->Color = clRed;
    }

    // Close the query
    ADOQuery1->Close();
}
