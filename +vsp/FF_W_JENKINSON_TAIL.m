function v = FF_W_JENKINSON_TAIL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 266);
  end
  v = vInitialized;
end
