require 'mkmf'

#RbConfig::CONFIG['CPP'] = RbConfig::CONFIG['CPP'].gsub('gcc', 'g++')

have_library('stdc++')

with_cflags('-x c++') do
  LIBDIR = RbConfig::CONFIG['libdir']
  INCLUDEDIR = RbConfig::CONFIG['includedir']

  HEADER_DIRS = [
    '/opt/local/include',
    '/usr/local/include',
    INCLUDEDIR,
    '/usr/include'
  ]

  LIB_DIRS = [
    '/opt/local/lib',
    '/usr/local/lib',
    LIBDIR,
    '/usr/lib'
  ]
  dir_config('libtorrent', HEADER_DIRS, LIB_DIRS)
  headers = ['torrent/object_stream.h', 'torrent/object.h', 'tr1/functional',
             'torrent/http.h', 'torrent/poll_select.h',
             'torrent/connection_manager.h', 'torrent/download_info.h']
  check = headers.map { |h| find_header(h) }

  abort 'libtorrent is missing' if check.include?(false)
  # check different function?
  abort 'libtorrent is missing' unless find_library('torrent', 'main')

  #$CPPFLAGS  << '-stdlib=libstdc++'
  create_makefile('test')
end
