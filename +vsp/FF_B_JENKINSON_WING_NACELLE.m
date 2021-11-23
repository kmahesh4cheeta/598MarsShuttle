function v = FF_B_JENKINSON_WING_NACELLE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 252);
  end
  v = vInitialized;
end
