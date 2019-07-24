package main
// Example for the usages of mutexes in golang
// go build main.go
// If you want to test it execute it without mutexes execute --without-mutex
// ./main.go --without-mutex

import (
    "flag"
    "fmt"
    "sync"
)

func main() {
    var result = 0
    disableMutex := flag.Bool("without-mutex", false, "Set to display result without the usage of mutexes")

    flag.Parse()

    if *disableMutex {
        result = calcWithoutMutex()
    } else {
        result = calcWithMutex()
    }

    fmt.Println(result)
}

func calcWithMutex() int {
    x := 0
    wg := sync.WaitGroup{}
    mutex := sync.Mutex{}

    // Mutexes lock a critical resource to be access by another go-routine
    routine := func() {
        mutex.Lock()
        x = x + 1
        mutex.Unlock()
        wg.Done()
    }

    for i := 0; i < 10000; i++ {
        wg.Add(1)
        go routine()
    }
    wg.Wait()

    return x
}

func calcWithoutMutex() int {
    x := 0
    wg := sync.WaitGroup{}

    routine := func() {
        x = x + 1
        wg.Done()
    }

    for i := 0; i < 10000; i++ {
        wg.Add(1)
        go routine()
    }
    wg.Wait()

    // Theoretically it should be 10000, but due to the accesss to x as a shared resource it is executed
    // in unordered and overwrites its own results often
    return x
}
