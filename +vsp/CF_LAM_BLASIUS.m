function v = CF_LAM_BLASIUS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 74);
  end
  v = vInitialized;
end
