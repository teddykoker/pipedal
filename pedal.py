#!/usr/bin/env python
import os
import tornado.ioloop
import tornado.web
import tornado.websocket
import spidev

root = os.path.dirname(__file__)
port = 80

spis = [spidev.SpiDev(), spidev.SpiDev()]
spis[0].open(0, 0)
spis[1].open(0, 1)
spis[0].max_speed_hz = 976000
spis[1].max_speed_hz = 976000

def write_pot(spi_num, input):
    msb = input >> 8
    lsb = input & 0xFF
    spi.xfer([msb, lsb])

class SocketHandler(tornado.websocket.WebSocketHandler):
    connections = set()

    def open(self):
        self.connections.add(self)

    def on_message(self, message):
        print message
        try:
	        write_pot(0, int(message))
        except Exception:
            pass

    def on_close(self):
        self.connections.remove(self)


app = tornado.web.Application(
    [
        (r"/websocket", SocketHandler),
        (
            r"/(.*)",
            tornado.web.StaticFileHandler,
            {"path": root, "default_filename": "index.html"},
        ),
    ]
)

if __name__ == "__main__":
    app.listen(port)
    tornado.ioloop.IOLoop.instance().start()
