# context

In general a context is a concurrency pattern. 
To be more specific a context is an object or struct which will be passed around across API boundaries to give all 
threads or co-routines access to the same data, i.e. the request id or user.

## context package in golang

Context maybe passed to every function as the first parameter, i.e.

```golang
ctx := context.Background()
timeoutCtx := WithTimeout(ctx, 10 * time.Seconds)
exec.CommandContext(timeoutCtx, "/bin/sh", "-c", "echo hello")
```

Further all contexts derive from `context.Background()`. The background context is an empty context. 
If a child context is canceled the complete context is canceled.

## Further reading

 - [go - context package](https://blog.golang.org/context)
 - [php - Explicit Global State with Context Objects](https://beberlei.de/2017/03/12/explicit_global_state_with_context_objects.html)
 - [StackOverflow - Context object anti pattern](https://stackoverflow.com/questions/986865/can-you-explain-the-context-design-pattern/986947#986947)
 - [Context object pattern](https://www.dre.vanderbilt.edu/~schmidt/PDF/Context-Object-Pattern.pdf)