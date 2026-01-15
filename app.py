from flask import Flask, render_template

app = Flask(__name__)

#### Rutas ####


# Endpoint para la home

@app.route('/')
def home():
    return render_template('base.html')

# Endpoint para el gestor de notas

@app.route('/notas')
def gestor_notas():
    return render_template('gestor_notas.html')    


# Corro la app

if __name__ == '__main__':
    app.run(debug=True)