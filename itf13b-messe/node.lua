
gl.setup(800, 600)

logo = resource.load_image("logo-tbs1.png")

function node.render()
    --gl.clear(0, 1, 0, 1) -- green
    gl.clear(0, 0, 0, 1) -- black

    -- render display
    local flap = resource.render_child("flapdisplay")
    flap:draw(0, 0, WIDTH-100, HEIGHT)

    -- render clock in top right corner
    clock = resource.render_child("analogclock")
    clock:draw(WIDTH-100, 0, WIDTH, 100)

    -- draw logo
    util.draw_correct(logo, WIDTH-90, HEIGHT-150, WIDTH, HEIGHT-20)

    -- dispose temp images to save gpu ram
    flap.dispose()
    clock.dispose()
end
