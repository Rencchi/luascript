function OnEvent(event, arg)
  -- Exploit di duplicazione
  -- Non funzionante offline
  -- Premere "G1" per farlo andare (modificabile con vari tasti mkb)
  if (event == "G_PRESSED" and arg == 1) then
    PressMouseButton(1)
    Sleep(10)
    ReleaseMouseButton(1)
    Sleep(10)
    PressMouseButton(1)
    Sleep(10)
    ReleaseMouseButton(1)
    Sleep(10)
    PressMouseButton(1)
    Sleep(10)
    ReleaseMouseButton(1)
    Sleep(10)
    PressMouseButton(1)
    Sleep(10)
    ReleaseMouseButton(1)
    Sleep(10)
  end

  -- Determina posizione x e y sullo schermo / View > Console
  -- Premere G2 per attivare (modificabile con vari tasti mkb)
  if (event == "G_PRESSED" and arg == 2) then
    x, y = GetMousePosition()
    OutputLogMessage("x = %d, y = %d\n", x, y)
  end
  
  -- Exploit duplicazione granate
  -- Selezionare granata, premere mb5, mirare, rilasciare (modificabile con vari tasti mkb)
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 5) then
  
    -- linee da commentare o rimuovere per eliminare l'autoswitch delle granate
    PressAndReleaseKey("3")
    Sleep(50)
    
    PressMouseButton(1)
    while (IsMouseButtonPressed(5))
    do
    end
    ReleaseMouseButton(1)
    Sleep(200)
    PressAndReleaseKey("tab")
    Sleep(115)
    -- Settare ad x ed y soprastanti se non funzionante
    -- Le variabili fanno laggare quindi Idk
    MoveMouseTo(25000, 40000)
    Sleep(5)
    PressAndReleaseMouseButton(1)
    Sleep(50)
    PressAndReleaseKey("escape")
  end
  
  -- Duplicazione filo spinato
  -- Attivazione con G5 (modificabile con vari tasti mkb)
  if (event == "G_PRESSED" and arg == 5) then
    PressAndReleaseKey("3")
    Sleep(200)

    PressMouseButton(1)
    Sleep(60)
    ReleaseMouseButton(1)
    Sleep(100)
    PressAndReleaseKey("tab")
    Sleep(95)
    -- Settare ad x ed y soprastanti se non funzionante
    -- Le variabili fanno laggare quindi Idk
    MoveMouseTo(25000, 40000)
    Sleep(5)
    PressAndReleaseMouseButton(1)
    Sleep(50)
    PressAndReleaseKey("escape")
  end
end
