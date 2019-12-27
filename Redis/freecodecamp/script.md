## Basic scripts

    $ ./redis-cli

    127.0.0.1:6379> ping
    PONG
    127.0.0.1:6379> PING
    PONG
    127.0.0.1:6379> set key name "Juan"
    (error) ERR syntax error
    127.0.0.1:6379> set name "Juan"
    OK
    127.0.0.1:6379> get name
    "Juan"
    127.0.0.1:6379> set nametemp "Manuel" EX 10
    OK
    127.0.0.1:6379> get nametemp
    "Manuel"
    127.0.0.1:6379> get nametemp
    (nil)
    127.0.0.1:6379> exists nametemp
    (integer) 0
    127.0.0.1:6379> exists name
    (integer) 1
    127.0.0.1:6379> del name
    (integer) 1
    127.0.0.1:6379> exists name
    (integer) 0
    127.0.0.1:6379> append name "Juan"
    (integer) 4
    127.0.0.1:6379> append name " Manuel"
    (integer) 11
    127.0.0.1:6379> get name
    "Juan Manuel"
    127.0.0.1:6379> 

## Subscribe / Publish

#### Terminal 1
    $ ./redis-cli
    127.0.0.1:6379> subscribe newVideos
    Reading messages... (press Ctrl-C to quit)
    1) "subscribe"
    2) "newVideos"
    3) (integer) 1
    1) "message"
    2) "newVideos"

#### Terminal 2
    $ ./redis-cli
    127.0.0.1:6379> publish newVideos "Redis Crash Course ISUP! Guys"
    (integer) 1
    127.0.0.1:6379> 

#### Terminal 1
    $ ./redis-cli
    127.0.0.1:6379> subscribe newVideos
    Reading messages... (press Ctrl-C to quit)
    1) "subscribe"
    2) "newVideos"
    3) (integer) 1
    1) "message"
    2) "newVideos"
    3) "Redis Crash Course ISUP! Guys"

