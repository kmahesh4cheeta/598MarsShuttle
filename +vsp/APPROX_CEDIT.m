function v = APPROX_CEDIT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 319);
  end
  v = vInitialized;
end
