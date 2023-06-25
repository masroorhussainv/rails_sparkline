module RailsSparkline
  class Renderer
    def self.render(data, options = {})
      width = options[:width] || 200
      height = options[:height] || 40
      fill = options[:fill] || "none"
      stroke = options[:stroke] || "blue"

      svg_markup = <<~SVG
        <svg xmlns="http://www.w3.org/2000/svg" width="#{width}" height="#{height}">
          <path fill="#{fill}" stroke="#{stroke}" d="#{generate_path(data)}"></path>
        </svg>
      SVG

      svg_markup.html_safe
    end

    def self.generate_path(data)
      min_value = data.min
      max_value = data.max
      y_range = max_value - min_value

      width = data.length * 10 # Assuming each data point takes 10 units of width
      height = 40 # Assuming a fixed height of 40 units

      x_step = width.to_f / (data.length - 1)

      path = "M0,#{height - ((data[0] - min_value) / y_range.to_f) * height}" # Move to the first data point

      data.each_with_index do |point, index|
        x = index * x_step
        y = height - ((point - min_value) / y_range.to_f) * height
        path += " L#{x},#{y}" # Line to the subsequent data points
      end

      path
    end
  end
end