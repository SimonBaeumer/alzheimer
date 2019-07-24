package main

import (
    "fmt"
    "strconv"
    "time"
)

type Server struct {
    Address     string
    Port        int
    Timeout     time.Duration
}

func NewServer(addr string, config ...func(*Server)) *Server {
    serv := Server{}
    serv.Address = addr

    for _, c := range config {
        c(&serv)
    }

    return &serv
}

func (s Server) Serve() {
    fmt.Println("Print server config \n")
    fmt.Println("Address: " + s.Address)
    fmt.Println("Port: " + strconv.Itoa(s.Port))
    fmt.Println("Timeout " + s.Timeout.String())
}

func main() {
    // Create arguments as functions which receive the object to configure as a reference and modify it
    timeout := func (s *Server) {
        s.Timeout, _ = time.ParseDuration("60s")
    }

    port := func (s *Server) {
        s.Port = 3600
    }

    // Add it as variadic arguments to the api - now you have an highly configurable API
    s := NewServer("localhost", timeout, port)
    s.Serve()
}
