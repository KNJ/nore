css_dir = "dist/css"
sass_dir = "src/scss"
output_style = (environment == :production) ? :compressed : :expanded

if environment == :production
  on_stylesheet_saved do |file|
    if File.exists?(file)
      filename = File.basename(file, File.extname(file))
      File.rename(file, css_dir + "/" + filename + ".min" + File.extname(file))
    end
  end
end
