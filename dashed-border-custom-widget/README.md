# Como usar:

1. Navegue até a área de código customizado no Flutterflow:
<p align="center">
  <img src="https://github.com/user-attachments/assets/4c53eabb-5aa4-41e9-89ca-4081697d4097" alt="Área de código customizado no Flutterflow" width="100px"/>
</p>

2. Crie um Widget Custom Code:
<p align="center">
  <img src="https://github.com/user-attachments/assets/75d824f2-e90d-4ec4-9059-2e5f0790b5e4" alt="Criar um Widget de código customizado" width="200px"/>
</p>

4. Nomeie o Widget com **"DashedContainer"**.

5. Marque a flag "Exclude from compilation" (Iremos utilizar um parâmetro do tipo Widget Builder e o Flutterflow nao renderiza a demonstração do componente e solicita marcar esta flag):
<p align="center">
  <img src="https://github.com/user-attachments/assets/a34b8544-d98b-4c9d-96d2-34b5c966192e" alt="Marcar a flag" width="200px"/>
</p>

7. Adicione os parâmetros de customização:
  - borderRadius: double
  - borderColor: Color
  - borderWeight: double
  - borderSpacing: double
  - innerContainer: WidgetBuilder
<p align="center">
  <img src="https://github.com/user-attachments/assets/0ad48422-4f24-4ab8-b847-2fffecc62a3a" alt="Parâmetros necessários" width="200px"/>
</p>

6. Adicione a dependência necessária ( dotted_border: ^2.1.0 ):
<p align="center">
  <img src="https://github.com/user-attachments/assets/9b8aaf56-a38d-48b1-ac80-211990f2016f" alt="Adicionando a dependência" width="200px"/>
</p>

7. Copie e cole o conteúdo do arquivo "dashed-border-widget.dart" presente neste diretório no escopo do seu widget customizado e salve.

8. Verifique se está tudo certo e começe a utilizar 🚀
