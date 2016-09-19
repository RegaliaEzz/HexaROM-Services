.class public Lmf/org/apache/xml/resolver/readers/SAXParserHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXParserHandler.java"


# instance fields
.field private ch:Lorg/xml/sax/ContentHandler;

.field private er:Lorg/xml/sax/EntityResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 39
    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->er:Lorg/xml/sax/EntityResolver;

    .line 40
    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    .line 44
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 76
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 83
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 104
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 4
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->er:Lorg/xml/sax/EntityResolver;

    if-eqz v2, :cond_0

    .line 60
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->er:Lorg/xml/sax/EntityResolver;

    invoke-interface {v2, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :cond_0
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "resolveEntity threw IOException!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 51
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    .line 52
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 114
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 117
    :cond_0
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "er"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 47
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->er:Lorg/xml/sax/EntityResolver;

    .line 48
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 131
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 139
    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method
