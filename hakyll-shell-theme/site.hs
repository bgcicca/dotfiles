{-# LANGUAGE OverloadedStrings, BlockArguments #-}
import           Data.Monoid (mappend)
import           Hakyll

config :: Configuration
config = defaultConfiguration
  { destinationDirectory = "docs"
  }

sidebarCtx :: Context String
sidebarCtx = field "sidebar" $ \_ -> loadBody "templates/sidebar.html"

main :: IO ()
main = hakyllWith config $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "fonts/**" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match (fromList ["about.org", "contact.org"]) $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/default.html" (sidebarCtx <> defaultContext)
            >>= relativizeUrls

    tags <- buildTags "posts/*" (fromCapture "tags/*.html")
    tagsRules tags $ \tag pattern -> do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll pattern
            let ctx = constField "title" ("Posts in category: " ++ tag)
                  <> listField "posts" (postCtxWithTags tags <> sidebarCtx) (return posts)
                  <> defaultContext
                  <> sidebarCtx
            makeItem ""
                >>= loadAndApplyTemplate "templates/tag.html" ctx
                >>= loadAndApplyTemplate "templates/default.html" ctx
                >>= relativizeUrls

    match "posts/*" $ do
        route $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/post.html" (postCtxWithTags tags <> sidebarCtx)
            >>= loadAndApplyTemplate "templates/default.html" (postCtxWithTags tags <> sidebarCtx)
            >>= relativizeUrls

    create ["archive.html"] $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll "posts/*"
            let archiveCtx = listField "posts" postCtx (return posts)
                  <> constField "title" "Archives"
                  <> defaultContext
                  <> sidebarCtx
            makeItem ""
                >>= loadAndApplyTemplate "templates/archive.html" archiveCtx
                >>= loadAndApplyTemplate "templates/default.html" archiveCtx
                >>= relativizeUrls

    match "index.html" $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll "posts/*"
            let cats = ["hakyll", "tutorial", "blog"]
                catsHtml = "<ul>" <> mconcat [ "<li><a href=\"/tags/" <> cat <> ".html\">" <> cat <> "</a></li>" | cat <- cats ] <> "</ul>"
                indexCtx = listField "posts" postCtx (return posts)
                  <> constField "categories" catsHtml
                  <> defaultContext
                  <> sidebarCtx
            getResourceBody
                >>= applyAsTemplate indexCtx
                >>= loadAndApplyTemplate "templates/default.html" indexCtx
                >>= relativizeUrls

    match "templates/sidebar.html" $ compile getResourceBody
    match "templates/*" $ compile templateBodyCompiler

postCtx :: Context String
postCtx =
    dateField "date" "%B %e, %Y"
    <> defaultContext

postCtxWithTags :: Tags -> Context String
postCtxWithTags tags = tagsField "tags" tags <> postCtx