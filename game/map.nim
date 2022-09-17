import streams
import os
import nim_tiled
import binaryparse
import strformat
import strutils
import tables
import zippy

createParser(Tile):
  u8: kind

createParser(Map):
  *Tile(): tiles[4096]

var map = loadTiledMap(paramStr(1))
var outputData: typeGetter(Map)

outputData.tiles = newSeq[typeGetter(Tile)](4096)
var layerSize = 4096
var blank = 0

var layerid = 0
for layer in map.layers:
  for y in 0..<layer.height:
    for x in 0..<layer.width:
      let
        index = x + y * layer.width
        gid = layer.tiles[index].value
      var
        render: bool = true
      var
        tile: typeGetter(Tile)
        set = map.findTilesetByGid(layer.tiles[index])
      if gid == 0:
        blank += 1
        outputData.tiles[layerid * layerSize.int + index] = tile
        continue
      tile.kind = gid.uint8 - 1 - 8
      outputData.tiles[layerid * layerSize.int + index] = tile
  layerid += 1

echo &"============================================="
echo &"Map stats - {paramStr(2)}"
echo &"============================================="
echo &"Tiles: {outputData.tiles.len}"
echo &"Empty Tiles: {blank}"

var output = newFileStream(paramStr(2), fmWrite)
Map.put(output, outputData)
output.close()
echo &"Base Size: {getFileSize(paramStr(2))}"

echo &"Final Size: {getFileSize(paramStr(2))}"
echo &"============================================="
