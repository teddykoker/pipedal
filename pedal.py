#!/usr/bin/env python
import os
import tornado.ioloop
import tornado.web
import tornado.websocket
import spidev
import RPi.GPIO as GPIO


GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(18, GPIO.OUT)

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
    spis[spi_num].xfer([msb, lsb])


class SocketHandler(tornado.websocket.WebSocketHandler):
    connections = set()

    def open(self):
        self.connections.add(self)

    def on_message(self, message):
        if message == "on":
            GPIO.output(18, GPIO.HIGH)
        if message == "off":
            GPIO.output(18, GPIO.LOW)

        message = message.split(",")
        try:
            write_pot(int(message[0]), int(message[1]))
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
