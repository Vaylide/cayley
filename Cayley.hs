import Network
import System.IO

server = "irc.synirc.net"
port = 6667

main = do
  h <- connectTo server (PortNumber (fromIntegral port))
  hSetBuffering h NoBuffering
  t <- hGetContents h
  print t