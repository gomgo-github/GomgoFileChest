import sys
import os
from PyQt6.QtWidgets import QApplication, QLabel, QWidget
from PyQt6.QtCore import Qt, QSize, QTimer # <--- Añadimos QTimer
from PyQt6.QtGui import QMovie

class FullscreenGif(QWidget):
    def __init__(self, gif_path, segundos):
        super().__init__()
        
        # Configuración de ventana (Igual que antes)
        self.setWindowFlags(Qt.WindowType.FramelessWindowHint | Qt.WindowType.WindowStaysOnTopHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)
        
        screen = QApplication.primaryScreen().geometry()
        self.setGeometry(screen)

        self.label = QLabel(self)
        self.label.setGeometry(0, 0, screen.width(), screen.height())
        
        self.movie = QMovie(gif_path)
        self.movie.setScaledSize(QSize(screen.width(), screen.height()))
        self.label.setMovie(self.movie)
        
        self.showFullScreen()
        self.movie.start()

        # TEMPORIZADOR: Cierra la aplicación tras X segundos
        # Multiplicamos por 1000 porque funciona en milisegundos
        QTimer.singleShot(segundos * 1000, self.close)

    def keyPressEvent(self, event):
        if event.key() == Qt.Key.Key_Escape:
            self.close()

if __name__ == "__main__":
    app = QApplication(sys.argv)
    ruta = os.path.expanduser('~/Imaxes/FOXY/foxy.gif')
    
    # Definimos el tiempo (ejemplo: 5 segundos)
    segundos_duracion = 0.7 
    
    player = FullscreenGif(ruta, segundos_duracion)
    sys.exit(app.exec())
