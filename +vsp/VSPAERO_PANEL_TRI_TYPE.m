function v = VSPAERO_PANEL_TRI_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 119);
  end
  v = vInitialized;
end
