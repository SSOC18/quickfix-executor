Example QuickFIX/Go executor
============================

* Forked from the executor published at https://githubcom/quickfixgo/examples
* The original Executor is a server that fills every limit order it receives
* This executor has some more rules such as
  * only fills BTCUSD orders
  * checks that the volume to fill is *affordable*
  * checks that limit orders arenot too far from the latest recorded price in the database


Installation
------------

To build and run the examples, you will first need [Go](http://www.golang.org) installed on your machine (version 1.6+ is *required*).

For local dev first make sure Go is properly installed, including setting up a [GOPATH](http://golang.org/doc/code.html#GOPATH).

Next, using [Git](https://git-scm.com/), clone this repository into `$GOPATH/src/github.com/quickfixgo/examples`.

Install `lib/pq` with `go get github.com/lib/pq`

Other dependencies (from the original executor) are vendored, so you just need to type `make install`.

This will compile and install the examples into `$GOPATH/bin`.

If this exits with exit status 0, then everything is working!


Running the Examples
--------------------

After installation, type `make run` to launch the executor.

By default, this will load the default configurations named after the example apps provided in the `config/` root directory.   Eg, running `$GOPATH/bin/executor` will load the `config/executor.cfg` configuration. This can be run with a custom configuration as a command line argument (`$GOPATH/bin/tradeclient my_trade_client.cfg`).

Licensing
---------

This software is available under the QuickFIX Software License. Please see the [LICENSE.txt](https://github.com/quickfixgo/examples/blob/master/LICENSE.txt) for the terms specified by the QuickFIX Software License.

Screencast Example
------------------

A new order transaction example in YouTube: https://youtu.be/K6vgXpXaFd0
The screencast is also available in this repository, and shows the executor accepting and filling a new order from the Web UI tradeclient through the RabbitMQ server.
