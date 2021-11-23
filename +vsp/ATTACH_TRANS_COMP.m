function v = ATTACH_TRANS_COMP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 13);
  end
  v = vInitialized;
end
