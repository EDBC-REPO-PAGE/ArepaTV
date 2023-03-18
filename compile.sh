#!/usr/bin/bash
clear

# HTML Process
for html in `ls ./view | grep -e '.html$'` ; do
    glunt ./view/$html > ./output/$html
    echo $html '>> processed'
done

# CSS Process
for css in `ls ./view | grep -e '.css$'` ; do
    glunt ./view/$css | minify --css > ./output/$css
    echo $css '>> processed'
done

# TXT Process
for txt in `ls ./view | grep -e '.txt$'` ; do
    glunt ./view/$txt > ./output/$txt
    echo $txt '>> processed'
done

# XML Process
for txt in `ls ./view | grep -e '.xml$'` ; do
    glunt ./view/$txt > ./output/$txt
    echo $txt '>> processed'
done

# JS Process
for js in `ls ./view | grep -e '.js$'` ; do
    browserify ./view/$js | minify --js > ./output/$js
    echo $js '>> processed'
done