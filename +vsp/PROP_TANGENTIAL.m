function v = PROP_TANGENTIAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 356);
  end
  v = vInitialized;
end
