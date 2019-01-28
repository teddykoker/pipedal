#!/usr/bin/env python
import os
import tornado.ioloop
import tornado.web
import tornado.websocket
import spidev

root = os.path.dirname(__file__)
port = 80

spi = spidev.SpiDev()
spi.open(0, 0)
spi.max_speed_hz = 976000

def write_pot(input):
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
	        write_pot(int(message))
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
