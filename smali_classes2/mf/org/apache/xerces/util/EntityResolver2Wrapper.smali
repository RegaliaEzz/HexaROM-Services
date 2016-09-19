.class public Lmf/org/apache/xerces/util/EntityResolver2Wrapper;
.super Ljava/lang/Object;
.source "EntityResolver2Wrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/ExternalSubsetResolver;


# instance fields
.field protected fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ext/EntityResolver2;)V
    .locals 0
    .param p1, "entityResolver"    # Lorg/xml/sax/ext/EntityResolver2;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V

    .line 66
    return-void
.end method

.method private createXMLInputSource(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 7
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .param p2, "baseURI"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "publicId":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "systemId":Ljava/lang/String;
    move-object v0, p2

    .line 201
    .local v0, "baseSystemId":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 202
    .local v1, "byteStream":Ljava/io/InputStream;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    .line 203
    .local v2, "charStream":Ljava/io/Reader;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "encoding":Ljava/lang/String;
    new-instance v6, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v6, v4, v5, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v6, "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {v6, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 207
    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 208
    invoke-virtual {v6, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    .line 209
    return-object v6
.end method


# virtual methods
.method public getEntityResolver()Lorg/xml/sax/ext/EntityResolver2;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    return-object v0
.end method

.method public getExternalSubset(Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 7
    .param p1, "grammarDescription"    # Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 108
    iget-object v6, p0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v6, :cond_0

    .line 110
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;->getRootName()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "baseURI":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    invoke-interface {v6, v4, v0}, Lorg/xml/sax/ext/EntityResolver2;->getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v3

    .line 116
    .local v3, "inputSource":Lorg/xml/sax/InputSource;
    if-eqz v3, :cond_0

    invoke-direct {p0, v3, v0}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->createXMLInputSource(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 129
    .end local v0    # "baseURI":Ljava/lang/String;
    .end local v3    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    return-object v5

    .line 119
    .restart local v0    # "baseURI":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 121
    .local v2, "ex":Ljava/lang/Exception;
    if-nez v2, :cond_1

    .line 122
    move-object v2, v1

    .line 124
    :cond_1
    new-instance v5, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v5, v2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 9
    .param p1, "resourceIdentifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 150
    iget-object v8, p0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v8, :cond_1

    .line 152
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "pubId":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "sysId":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "baseURI":Ljava/lang/String;
    const/4 v4, 0x0

    .line 156
    .local v4, "name":Ljava/lang/String;
    instance-of v8, p1, Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;

    if-eqz v8, :cond_2

    .line 157
    const-string v4, "[dtd]"

    .line 168
    .end local p1    # "resourceIdentifier":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    :cond_0
    :goto_0
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    .line 189
    .end local v0    # "baseURI":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "pubId":Ljava/lang/String;
    .end local v6    # "sysId":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v7

    .line 159
    .restart local v0    # "baseURI":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "pubId":Ljava/lang/String;
    .restart local v6    # "sysId":Ljava/lang/String;
    .restart local p1    # "resourceIdentifier":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    :cond_2
    instance-of v8, p1, Lmf/org/apache/xerces/impl/XMLEntityDescription;

    if-eqz v8, :cond_0

    .line 160
    check-cast p1, Lmf/org/apache/xerces/impl/XMLEntityDescription;

    .end local p1    # "resourceIdentifier":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/XMLEntityDescription;->getEntityName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 175
    :cond_3
    :try_start_0
    iget-object v8, p0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    invoke-interface {v8, v4, v5, v0, v6}, Lorg/xml/sax/ext/EntityResolver2;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v3

    .line 176
    .local v3, "inputSource":Lorg/xml/sax/InputSource;
    if-eqz v3, :cond_1

    invoke-direct {p0, v3, v0}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->createXMLInputSource(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 179
    .end local v3    # "inputSource":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 181
    .local v2, "ex":Ljava/lang/Exception;
    if-nez v2, :cond_4

    .line 182
    move-object v2, v1

    .line 184
    :cond_4
    new-instance v7, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v7, v2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V
    .locals 0
    .param p1, "entityResolver"    # Lorg/xml/sax/ext/EntityResolver2;

    .prologue
    .line 78
    iput-object p1, p0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    .line 79
    return-void
.end method
