function v = CF_LAM_BLASIUS_W_HEAT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 75);
  end
  v = vInitialized;
end
