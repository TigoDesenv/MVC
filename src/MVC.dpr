program MVC;

uses
  Vcl.Forms,
  mvc.view.principal in 'view\mvc.view.principal.pas' {Form1},
  mvc.model.entity.interfaces in 'model\entity\mvc.model.entity.interfaces.pas',
  mvc.model.entity.implement.cliente in 'model\entity\implement\mvc.model.entity.implement.cliente.pas',
  mvc.model.entity.implement.produtos in 'model\entity\implement\mvc.model.entity.implement.produtos.pas',
  mvc.model.entity.implement.pedidos in 'model\entity\implement\mvc.model.entity.implement.pedidos.pas',
  mvc.model.entity.implement.pedidoitens in 'model\entity\implement\mvc.model.entity.implement.pedidoitens.pas',
  mvc.model.entity.implement.entity in 'model\entity\implement\mvc.model.entity.implement.entity.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
