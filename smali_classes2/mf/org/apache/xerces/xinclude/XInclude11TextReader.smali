.class public Lmf/org/apache/xerces/xinclude/XInclude11TextReader;
.super Lmf/org/apache/xerces/xinclude/XIncludeTextReader;
.source "XInclude11TextReader.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/xinclude/XIncludeHandler;I)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p2, "handler"    # Lmf/org/apache/xerces/xinclude/XIncludeHandler;
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;-><init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/xinclude/XIncludeHandler;I)V

    .line 51
    return-void
.end method


# virtual methods
.method protected isValid(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 60
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v0

    return v0
.end method
