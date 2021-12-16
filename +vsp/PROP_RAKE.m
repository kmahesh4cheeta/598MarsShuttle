function v = PROP_RAKE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 350);
  end
  v = vInitialized;
end
