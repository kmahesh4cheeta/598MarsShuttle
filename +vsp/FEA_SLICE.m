function v = FEA_SLICE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 219);
  end
  v = vInitialized;
end
