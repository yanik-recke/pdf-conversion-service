package application

import (
	"net/http"

	"go.mongodb.org/mongo-driver/mongo"
)


type App struct {
	router http.Handler
	mongoClient *mongo.Client
}

func New(uri string) *App {

	app := &App {
		
	}

	return app
}