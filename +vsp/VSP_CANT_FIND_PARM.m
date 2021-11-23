function v = VSP_CANT_FIND_PARM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 149);
  end
  v = vInitialized;
end
