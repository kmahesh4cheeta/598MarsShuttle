function v = DOUBLE_MATRIX_DATA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 366);
  end
  v = vInitialized;
end
