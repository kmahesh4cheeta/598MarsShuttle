function v = VSP_OK()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 145);
  end
  v = vInitialized;
end
