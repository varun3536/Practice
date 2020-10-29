#!/usr/bin/env groovy

node{
    
def call(body) {
    try {
        notify(start)
        body()
    	notify(success)
    } catch(exception) {
        notify(failure)
    }
}

def notify(state) {
    //notify scm
}
}
