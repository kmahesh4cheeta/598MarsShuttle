function v = FF_B_TORENBEEK()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 248);
  end
  v = vInitialized;
end
