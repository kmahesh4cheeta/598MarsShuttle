function v = VSP_CANT_FIND_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 148);
  end
  v = vInitialized;
end
