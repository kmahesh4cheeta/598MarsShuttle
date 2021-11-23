function v = SLICE_TXT_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 104);
  end
  v = vInitialized;
end
