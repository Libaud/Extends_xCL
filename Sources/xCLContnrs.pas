{========================================================================================
  Module : xCLContnrs
  Description : Extend Contnrs.pas in LCL or VCL
  Author : Frédéric Libaud
  **************************************************************************************
  History
  --------------------------------------------------------------------------------------
  2024 02 21 - Launching module
========================================================================================}
unit xCLContnrs;

{$IFDEF FPC}
  {$mode objfpc}{$H+}
{$ENDIF}

interface

uses
  Classes, SysUtils;

type
  { TPersistentClass declaration }

  TPersistentClassList = class (TList)
      protected
        function GetItems(aIndex: Integer): TPersistentClass;
        procedure SetItems(aIndex: Integer; aClass: TPersistentClass);
      public
        function Add(AClass: TPersistentClass): Integer;
        function Extract(aItem: TPersistentClass): TPersistentClass;
        function Remove(aClass: TPersistentClass): Integer;
        function IndexOf(aClass: TPersistentClass): Integer;
        function First: TPersistentClass;
        function Last: TPersistentClass;
        procedure Insert(aIndex: Integer; aAClass: TPersistentClass);
        property Items[aIndex: Integer]: TPersistentClass read GetItems
                                                         write SetItems; default;
    end;

  { End of TPersistentClass declaration }

  { TComponentClassList declaration }

  TComponentClassList = class (TList)
      protected
        function GetItems(aIndex: Integer): TComponentClass;
        procedure SetItems(aIndex: Integer; AClass: TComponentClass);
      public
        function Add(aClass: TComponentClass): Integer;
        function Extract(aItem: TComponentClass): TClass;
        function Remove(aClass: TComponentClass): Integer;
        function IndexOf(aClass: TComponentClass): Integer;
        function First: TComponentClass;
        function Last: TComponentClass;
        procedure Insert(aIndex: Integer; AClass: TComponentClass);
        property Items[aIndex: Integer]: TComponentClass read GetItems
                                                        write SetItems; default;
    end;

  { End of TComponentClassList declaration }


implementation

{ TPersistentClassList implementation }

function TPersistentClassList.Add(AClass: TPersistentClass): Integer;
begin
  Result:= inherited Add(Pointer(AClass));
end;

function TPersistentClassList.Extract(aItem: TPersistentClass): TPersistentClass;
begin
  Result:= TPersistentClass(inherited Extract(Pointer(aItem)));
end;

function TPersistentClassList.First: TPersistentClass;
begin
  Result:= TPersistentClass(inherited First);
end;

function TPersistentClassList.GetItems(aIndex: Integer): TPersistentClass;
begin
  Result:= TPersistentClass(inherited Items[aIndex]);
end;

function TPersistentClassList.IndexOf(aClass: TPersistentClass): Integer;
begin
  Result:= inherited IndexOf(Pointer(aClass));
end;

procedure TPersistentClassList.Insert(aIndex: Integer; aAClass: TPersistentClass);
begin
  inherited Insert(aIndex,Pointer(aAClass));
end;

function TPersistentClassList.Last: TPersistentClass;
begin
  Result:= TPersistentClass(inherited Last);
end;

function TPersistentClassList.Remove(aClass: TPersistentClass): Integer;
begin
  Result:= inherited Remove(Pointer(aClass));
end;

procedure TPersistentClassList.SetItems(aIndex: Integer; aClass: TPersistentClass);
begin
  Put(aIndex,Pointer(aClass));
end;

{ End of TComponentClassList implementation }

{ TComponentClassList implementation }

function TComponentClassList.Add(aClass: TComponentClass): Integer;
begin
  Result:= inherited Add(Pointer(aClass));
end;

function TComponentClassList.Extract(aItem: TComponentClass): TClass;
begin
  Result:= TComponentClass(inherited Extract(Pointer(aItem)));
end;

function TComponentClassList.First: TComponentClass;
begin
  Result:= TComponentClass(inherited First);
end;

function TComponentClassList.GetItems(aIndex: Integer): TComponentClass;
begin
  Result:= TComponentClass(inherited Items[aIndex]);
end;

function TComponentClassList.IndexOf(aClass: TComponentClass): Integer;
begin
  Result:= inherited IndexOf(Pointer(aClass));
end;

procedure TComponentClassList.Insert(aIndex: Integer; AClass: TComponentClass);
begin
  inherited Insert(aIndex,Pointer(AClass));
end;

function TComponentClassList.Last: TComponentClass;
begin
  Result:= TComponentClass(inherited Last);
end;

function TComponentClassList.Remove(aClass: TComponentClass): Integer;
begin
  Result:= inherited Remove(Pointer(aClass));
end;

procedure TComponentClassList.SetItems(aIndex: Integer; AClass: TComponentClass);
begin
  Put(aIndex,Pointer(AClass));
end;

{ End of TComponentClassList implementation }

end.

