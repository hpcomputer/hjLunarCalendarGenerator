unit TestCalendarDataSaverToICS;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit
  being tested.

}

interface

uses
  TestFramework, Classes, SysUtils, CalendarDataSaverToICS, CalendarCommons, Windows;

type
  // Test methods for class TCalendarDataSaver

  TestTCalendarDataSaver = class(TTestCase)
  strict private
    FCalendarDataSaver: TCalendarSaverToICS;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestAddData;
    procedure TestSave;
  end;

implementation

uses
  hjLunarDateType;

procedure TestTCalendarDataSaver.SetUp;
begin
  FCalendarDataSaver := TCalendarSaverToICS.Create('test.txt');
end;

procedure TestTCalendarDataSaver.TearDown;
begin
  FCalendarDataSaver.Free;
  FCalendarDataSaver := nil;
end;

procedure TestTCalendarDataSaver.TestSave;
begin
  FCalendarDataSaver.BeginSave;
  FCalendarDataSaver.EndSave;
end;

procedure TestTCalendarDataSaver.TestAddData;
var
  AData: TCalendarData;
begin
  // TODO: Setup method call parameters
  AData := TCalendarData.Create;
  AData.SetData(DateRec(1981, 1, 17), DateRec(1980, 12, 12, False), '현수생일', '현수생일설명');
//  AData.SetData(Date)

  FCalendarDataSaver.BeginSave;
  FCalendarDataSaver.AddData(AData);
  FCalendarDataSaver.EndSave;

  AData.Free;
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTCalendarDataSaver.Suite);
end.

