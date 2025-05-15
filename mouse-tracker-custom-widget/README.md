# Como usar:

1. Navegue até a área de código customizado no Flutterflow:
<p align="center">
  <img src="https://github.com/user-attachments/assets/4c53eabb-5aa4-41e9-89ca-4081697d4097" alt="Área de código customizado no Flutterflow" width="100px"/>
</p>

2. Crie um Widget Custom Code:
<p align="center">
  <img src="https://github.com/user-attachments/assets/75d824f2-e90d-4ec4-9059-2e5f0790b5e4" alt="Criar um Widget de código customizado" width="200px"/>
</p>

4. Nomeie o Widget com **"MouseTracker"**.

5. Adicione os parâmetros de customização:

  - onHover: {
    type: Action,
    nullable: marcado,
    actionParameter: mousePositionX: double,
    actionParameter: mousePositionY: double
  }
  - onEnter: {
    type: Action,
    nullable: marcado
  }
  - onExit: {
    type: Action,
    nullable: marcado
  }

6. Copie e cole o conteúdo do arquivo "mouse-tracker-widget.dart" presente neste diretório no escopo do seu widget customizado e salve.

7. Verifique se está tudo certo e começe a utilizar 🚀
