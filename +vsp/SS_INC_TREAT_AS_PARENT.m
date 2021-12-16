function v = SS_INC_TREAT_AS_PARENT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 384);
  end
  v = vInitialized;
end
