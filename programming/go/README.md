# golang

## Concurrency

 - [Concurrency - slides](https://talks.golang.org/2012/concurrency.slide#1)
 - [Rob Pike - Concurrency Is Not Parallelism](https://vimeo.com/49718712)
 - [Concurrency in go](https://seancarpenter.io/posts/concurrency_in_go/)
 - [A journey with go](https://medium.com/a-journey-with-go)
 
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