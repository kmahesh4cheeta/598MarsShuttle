function v = CLOSE_NONE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 488);
  end
  v = vInitialized;
end
