# golang

## Concurrency

 - [Concurrency - slides](https://talks.golang.org/2012/concurrency.slide#1)
 - [Rob Pike - Concurrency Is Not Parallelism](https://vimeo.com/49718712)
 - [Concurrency in go](https://seancarpenter.io/posts/concurrency_in_go/)
 - [A journey with go](https://medium.com/a-journey-with-go)
 
### Channels

 - [Go routine leaks, the forgotten sender](https://www.ardanlabs.com/blog/2018/11/goroutine-leaks-the-forgotten-sender.html)
 - [Never start a goroutine without knowing how to stop it](https://dave.cheney.net/2016/12/22/never-start-a-goroutine-without-knowing-how-it-will-stop)
 - [Escape Analysis](https://www.ardanlabs.com/blog/2017/05/language-mechanics-on-escape-analysis.html)
 - [Context pattern](https://blog.golang.org/context)
 - [Behaviour of channels](https://www.ardanlabs.com/blog/2017/10/the-behavior-of-channels.html)
 - 
 
 ## Data structures
 
 ### Map
 
 It is possible to use a `struct` as the key of a hash map.
 
 A possible use case is to avoid the usage of nested maps where the inner map always needs
 to allocate new memory if it did not existed before.
 
 Example storing page views by country:
 
 ```go
 type Views struct {
 	Path, Country string
 }

v := make(map[Views]int)
v[Views{"/", "DE"}] = 1
 ```
 
 Read more about it in the [go maps blog](https://blog.golang.org/maps) article.