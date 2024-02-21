{ This file was automatically created by Typhon IDE. Do not edit!
  This source is only used to compile and install the package.
 }

unit Extends_xCL;

{$warn 5023 off : no warning about unused units}
interface

uses
  xCLContnrs, TyphonPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('Extends_xCL', @Register);
end.
