module Paths_algos (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,0,1], versionTags = []}
bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/home/ecialo/.cabal/bin"
libdir     = "/home/ecialo/.cabal/lib/algos-0.0.1/ghc-7.6.3"
datadir    = "/home/ecialo/.cabal/share/algos-0.0.1"
libexecdir = "/home/ecialo/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catchIO (getEnv "algos_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "algos_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "algos_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "algos_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
