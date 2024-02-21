{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit PkgExtends_xCL;

{$warn 5023 off : no warning about unused units}
interface

uses
xCLContnrs, {$ifdef TYPHON}TyphonPackageIntf{$endif}{$ifdef LAZARUS}LazarusPackageIntf{$endif};

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('PkgExtends_xCL', @Register);
end.
