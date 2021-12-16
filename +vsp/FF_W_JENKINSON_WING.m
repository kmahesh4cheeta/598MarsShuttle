function v = FF_W_JENKINSON_WING()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 265);
  end
  v = vInitialized;
end
