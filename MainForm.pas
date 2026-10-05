unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    lblTitle: TLabel;
    lblSubtitle: TLabel;
    grpMenu: TGroupBox;
    lblPie: TLabel;
    lblPiePrice: TLabel;
    edtPie: TEdit;
    lblSausage: TLabel;
    lblSausagePrice: TLabel;
    edtSausage: TEdit;
    lblSandwich: TLabel;
    lblSandwichPrice: TLabel;
    edtSandwich: TEdit;
    lblHotDog: TLabel;
    lblHotDogPrice: TLabel;
    edtHotDog: TEdit;
    lblChips: TLabel;
    lblChipsPrice: TLabel;
    edtChips: TEdit;
    lblJuice: TLabel;
    lblJuicePrice: TLabel;
    edtJuice: TEdit;
    lblWater: TLabel;
    lblWaterPrice: TLabel;
    edtWater: TEdit;
    lblCookie: TLabel;
    lblCookiePrice: TLabel;
    edtCookie: TEdit;
    lblLolly: TLabel;
    lblLollyPrice: TLabel;
    edtLolly: TEdit;
    btnCalc: TButton;
    btnClear: TButton;
    pnlTotal: TPanel;
    lblTotal: TLabel;
    grpCash: TGroupBox;
    lblCashGiven: TLabel;
    edtCash: TEdit;
    btnChange: TButton;
    lblChange: TLabel;
    lblMsg: TLabel;
    memoReceipt: TMemo;
    lblFooter: TLabel;
    procedure btnCalcClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnChangeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  total: Double; // global total - i know globals are bad but its easier lol

implementation

{$R *.dfm}

// prices - keep them as vars so we can change easy
var
  piePrice : Double = 4.50;
  sausagePrice : Double = 3.50;
  sandwichPrice : Double = 5.00;
  hotdogPrice : Double = 4.00;
  chipsPrice : Double = 2.50;
  juicePrice : Double = 3.00;
  waterPrice : Double = 2.00;
  cookiePrice : Double = 1.50;
  lollyPrice : Double = 2.00;

procedure TForm1.FormCreate(Sender: TObject);
begin
  total := 0;
  memoReceipt.Visible := False;
  lblTotal.Caption := 'Total: $0.00';
  // set defaults
  edtPie.Text := '0';
  edtSausage.Text := '0';
  edtSandwich.Text := '0';
  edtHotDog.Text := '0';
  edtChips.Text := '0';
  edtJuice.Text := '0';
  edtWater.Text := '0';
  edtCookie.Text := '0';
  edtLolly.Text := '0';
  edtCash.Text := '0';
end;

procedure TForm1.btnCalcClick(Sender: TObject);
var
  pies, saus, sand, hotdog, chips, juice, water, cookie, lolly : Integer;
begin
  // get qtys - StrToIntDef will handle letters and empty
  pies := StrToIntDef(edtPie.Text, 0);
  saus := StrToIntDef(edtSausage.Text, 0);
  sand := StrToIntDef(edtSandwich.Text, 0);
  hotdog := StrToIntDef(edtHotDog.Text, 0);
  chips := StrToIntDef(edtChips.Text, 0);
  juice := StrToIntDef(edtJuice.Text, 0);
  water := StrToIntDef(edtWater.Text, 0);
  cookie := StrToIntDef(edtCookie.Text, 0);
  lolly := StrToIntDef(edtLolly.Text, 0);

  // fix negatives
  if pies < 0 then pies := 0;
  if saus < 0 then saus := 0;
  if sand < 0 then sand := 0;
  if hotdog < 0 then hotdog := 0;
  if chips < 0 then chips := 0;
  if juice < 0 then juice := 0;
  if water < 0 then water := 0;
  if cookie < 0 then cookie := 0;
  if lolly < 0 then lolly := 0;

  // update edits if they were bad (so user sees 0)
  edtPie.Text := IntToStr(pies);
  edtSausage.Text := IntToStr(saus);
  edtSandwich.Text := IntToStr(sand);
  edtHotDog.Text := IntToStr(hotdog);
  edtChips.Text := IntToStr(chips);
  edtJuice.Text := IntToStr(juice);
  edtWater.Text := IntToStr(water);
  edtCookie.Text := IntToStr(cookie);
  edtLolly.Text := IntToStr(lolly);

  // calc total - messy but straight forward
  total := 0;
  total := total + pies * piePrice;
  total := total + saus * sausagePrice;
  total := total + sand * sandwichPrice;
  total := total + hotdog * hotdogPrice;
  total := total + chips * chipsPrice;
  total := total + juice * juicePrice;
  total := total + water * waterPrice;
  total := total + cookie * cookiePrice;
  total := total + lolly * lollyPrice;

  lblTotal.Caption := 'Total: $' + FormatFloat('0.00', total);

  // do receipt - repetitive but works
  memoReceipt.Clear;
  if pies > 0 then memoReceipt.Lines.Add('Meat Pie x' + IntToStr(pies) + ' = $' + FormatFloat('0.00', pies * piePrice));
  if saus > 0 then memoReceipt.Lines.Add('Sausage Roll x' + IntToStr(saus) + ' = $' + FormatFloat('0.00', saus * sausagePrice));
  if sand > 0 then memoReceipt.Lines.Add('Sandwich x' + IntToStr(sand) + ' = $' + FormatFloat('0.00', sand * sandwichPrice));
  if hotdog > 0 then memoReceipt.Lines.Add('Hot Dog x' + IntToStr(hotdog) + ' = $' + FormatFloat('0.00', hotdog * hotdogPrice));
  if chips > 0 then memoReceipt.Lines.Add('Chips x' + IntToStr(chips) + ' = $' + FormatFloat('0.00', chips * chipsPrice));
  if juice > 0 then memoReceipt.Lines.Add('Juice Box x' + IntToStr(juice) + ' = $' + FormatFloat('0.00', juice * juicePrice));
  if water > 0 then memoReceipt.Lines.Add('Water x' + IntToStr(water) + ' = $' + FormatFloat('0.00', water * waterPrice));
  if cookie > 0 then memoReceipt.Lines.Add('Cookie x' + IntToStr(cookie) + ' = $' + FormatFloat('0.00', cookie * cookiePrice));
  if lolly > 0 then memoReceipt.Lines.Add('Lolly Bag x' + IntToStr(lolly) + ' = $' + FormatFloat('0.00', lolly * lollyPrice));

  if total > 0 then
  begin
    memoReceipt.Lines.Add('---------------------');
    memoReceipt.Lines.Add('TOTAL = $' + FormatFloat('0.00', total));
    memoReceipt.Visible := True;
  end
  else
  begin
    memoReceipt.Visible := False;
  end;

  // also reset change msg when recalculating
  lblMsg.Caption := '';
  lblChange.Caption := 'Change: $0.00';
  lblChange.Font.Color := clBlack;

end;

procedure TForm1.btnChangeClick(Sender: TObject);
var
  cash, change : Double;
  s : string;
begin
  // make sure total is up to date first - just call calc again lol
  btnCalcClick(Sender);

  s := edtCash.Text;
  // replace comma with dot just in case
  s := StringReplace(s, ',', '.', [rfReplaceAll]);

  cash := StrToFloatDef(s, -1);

  // try to check if its valid
  if cash = -1 then
  begin
    // maybe user typed letters
    if edtCash.Text = '' then cash := 0
    else
    begin
      lblMsg.Caption := 'enter a valid amount';
      lblMsg.Font.Color := clRed;
      lblChange.Caption := 'Change: $0.00';
      exit;
    end;
  end;

  if cash < 0 then
  begin
    lblMsg.Caption := 'cash cant be negative lol';
    lblMsg.Font.Color := clRed;
    lblChange.Caption := 'Change: $0.00';
    exit;
  end;

  if total = 0 then
  begin
    lblChange.Caption := 'Change: $0.00';
    if cash > 0 then lblMsg.Caption := 'add some items first'
    else lblMsg.Caption := '';
    lblMsg.Font.Color := clRed;
    exit;
  end;

  change := cash - total;

  if change < 0 then
  begin
    lblChange.Caption := 'Change: -$' + FormatFloat('0.00', Abs(change));
    lblMsg.Caption := 'need $' + FormatFloat('0.00', Abs(change)) + ' more';
    lblMsg.Font.Color := clRed;
    lblChange.Font.Color := clRed;
  end
  else
  begin
    lblChange.Caption := 'Change: $' + FormatFloat('0.00', change);
    lblMsg.Caption := 'thanks! enjoy your lunch :)';
    lblMsg.Font.Color := clGreen;
    lblChange.Font.Color := clBlack;
  end;
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  edtPie.Text := '0';
  edtSausage.Text := '0';
  edtSandwich.Text := '0';
  edtHotDog.Text := '0';
  edtChips.Text := '0';
  edtJuice.Text := '0';
  edtWater.Text := '0';
  edtCookie.Text := '0';
  edtLolly.Text := '0';
  edtCash.Text := '0';
  total := 0;
  lblTotal.Caption := 'Total: $0.00';
  lblChange.Caption := 'Change: $0.00';
  lblChange.Font.Color := clBlack;
  lblMsg.Caption := '';
  memoReceipt.Clear;
  memoReceipt.Visible := False;
end;

end.
