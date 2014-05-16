:: Jack PDF Splitter
:: Divide um único arquivo PDF em diversos outros
:: por Marcker - Grupo Mauá e Região de Comunicação - 2014

@echo off
set pdftk="C:\Program Files (x86)\PDFtk Server\bin\pdftk.exe"
cls

@echo on
%pdftk% *.pdf burst verbose

start "" cmd /c "echo Arquivos criados com êxito! & echo ( & pause"