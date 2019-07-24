# functional-options

With options is a nice way to define a clean API in a functional way. 

Take a look at this [blog pots](https://dave.cheney.net/2014/10/17/functional-options-for-friendly-apis) for a deeper explanation.

Example of API usage:

```go
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
```

## Alternatives (golang)

 - Use a `struct` for a configurable API - the disadvantage is the way of how defaults are defined. Especially if defaults like `0` have a special meaning.
 - Using pointers as optional parameters (you could pass `nil` instead) has still the problem of passing empty values to your function.
 
In example: 

```
// pseudo code

type ServerConfig struct {
    Address     string
    Port        int
}

func NewServer(config ServerConfig) *Server {
    [...]
    return &Server{
        Address: config.Address,
        Port:    config.Port,
    } 
}

// Default for Port would be 0 - if 0 would have a special meaning we could not determine it is the default
// value or a value given by the consumer - we still need to provide the value for the port 
server := NewServer(ServerConfig {
    Address: "...",
})

// If the implementatino of NewServer would receive a pointer we could provide nil as an argument,
// this would still need to pass an empty value which looks hacky
func NewServer(config *ServerConfig) *Server {}
server := NewServer(nil)
```

