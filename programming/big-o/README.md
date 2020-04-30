# Big O

Big O describes the rate of time or space increase of a function.

| **Function** | **Description**                                                                                                                                                                                 |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| O(1)         | Runtime does not increase with more inputs, it stays always the same.                                                                                                                           |
| O(N)         | Runtime increases linear with the input.                                                                                                                                                        |
| O(N²)        |                                                                                                                                                                                                 |
| O(2^N)       | If you have a recursive function that have multiple calls, the runtime will often (not always) look like 0(branches^depth), where branches is the number of times each recursive call branches. |
| O(log N)     | When the number of elements in the problem space gets halfed eacth time.                                                                                                                        |
| O(N log N)   |                                                                                                                                                                                                 |