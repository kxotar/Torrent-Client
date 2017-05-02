require 'net/http'
require 'digest/sha1'
require 'thread'
require 'ipaddr'
require 'socket'
require 'timeout'
require 'pp'

require_relative 'lib/ruby_torrent/ruby-bencode/lib/bencode.rb'
require_relative 'lib/ruby_torrent/ruby-bencode/lib/bencode.rb'
require_relative 'lib/ruby_torrent/client'
require_relative 'lib/ruby_torrent/piece'
require_relative 'lib/ruby_torrent/block'
require_relative 'lib/ruby_torrent/file_handler'
require_relative 'lib/ruby_torrent/meta_info'
require_relative 'lib/ruby_torrent/block_request_scheduler'
require_relative 'lib/ruby_torrent/block_request_process'
require_relative 'lib/ruby_torrent/byte_array'
require_relative 'lib/ruby_torrent/incoming_message_process'
require_relative 'lib/ruby_torrent/tracker'
require_relative 'lib/ruby_torrent/peer'
require_relative 'lib/ruby_torrent/bitfield'
require_relative 'lib/ruby_torrent/message'
require_relative 'lib/ruby_torrent/utils'

include Utils


download_path= "."
torrent= "/home/skeleton/Downloads/Content/abc123.torrent"
client = Client.new(torrent, download_path)
client.run!

Utils::join_threads
