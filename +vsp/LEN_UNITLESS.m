function v = LEN_UNITLESS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 296);
  end
  v = vInitialized;
end
