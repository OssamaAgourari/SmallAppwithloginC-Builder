#ifndef Unit6H
#define Unit6H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.DBGrids.hpp>
//---------------------------------------------------------------------------
class TForm6 : public TForm
{
__published: // To display available places // "Afficher Places Disponibles" button
    TLabel *Label1;
	TADOConnection *ADOConnection1;
	TADOQuery *ADOQuery1;
	TButton *Button1;
	TDataSource *DataSource1;
	TDBGrid *DBGrid1;
	TButton *Button2;
	TDBGrid *DBGrid2;
	TADOQuery *ADOQuery2;
	TDataSource *DataSource2; // To display messages
	void __fastcall FormShow(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);

public:
    __fastcall TForm6(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm6 *Form6;
//---------------------------------------------------------------------------
#endif
