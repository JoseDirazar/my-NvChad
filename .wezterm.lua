
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Ajuste para el brillo del fondo
local dimmer = { brightness = 0.07 }

-- Función para seleccionar un fondo aleatorio de una carpeta
local function get_random_background()
  local images_dir = './Pictures'  -- Cambia esta ruta a tu carpeta de imágenes
  local files = {}

  -- Leer archivos en la carpeta con múltiples extensiones
  for _, ext in ipairs({ 'jpg', 'png', 'jpeg' }) do
    for _, file in ipairs(wezterm.glob(images_dir .. '/*.' .. ext)) do
      table.insert(files, file)
    end
  end

  -- Selecciona un archivo al azar
  if #files > 0 then
    return files[math.random(#files)]
  else
    return nil  -- Si no hay archivos en la carpeta
  end
end

-- Configuración de color y fuente
config.color_scheme = 'Catppuccin Frappe'
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.enable_tab_bar = false
config.window_decorations = "NONE"
config.cursor_blink_ease_in = "Linear"

-- Asigna el fondo de pantalla aleatorio
local background_image = get_random_background()
if background_image then
  config.background = {
    {
      source = { File = background_image },
      width = 'Cover',
      horizontal_align = 'Center',
      vertical_align = "Middle",
      hsb = dimmer,
    },
  }
end

-- Retorna la configuración a WezTerm
return config
