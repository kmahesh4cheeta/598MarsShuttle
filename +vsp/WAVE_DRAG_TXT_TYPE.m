function v = WAVE_DRAG_TXT_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 118);
  end
  v = vInitialized;
end
