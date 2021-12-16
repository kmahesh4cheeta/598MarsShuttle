function v = ATTACH_TRANS_UV()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 14);
  end
  v = vInitialized;
end
