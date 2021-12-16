function v = FF_B_SCHEMENSKY_NACELLE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 246);
  end
  v = vInitialized;
end
