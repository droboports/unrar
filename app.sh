### UNRAR ###
_build_unrar() {
local VERSION="5.3.4"
local FOLDER="unrar"
local FILE="unrarsrc-${VERSION}.tar.gz"
local URL="http://www.rarlab.com/rar/${FILE}"

_download_tgz "${FILE}" "${URL}" "${FOLDER}"
pushd target/"${FOLDER}"
mv makefile Makefile
make CXX="${CXX}" STRIP="${STRIP}" \
  CXXFLAGS="${CFLAGS} -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE" \
  LDFLAGS="${LDFLAGS} -pthread"
make install DESTDIR="${DEST}"
popd
}

### BUILD ###
_build() {
  _build_unrar
  _package
}
