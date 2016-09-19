.class final Lmf/org/apache/xerces/jaxp/validation/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;
    .locals 3
    .param p0, "e"    # Lmf/org/apache/xerces/xni/XNIException;

    .prologue
    .line 60
    instance-of v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    if-eqz v0, :cond_0

    .line 61
    check-cast p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    .end local p0    # "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {p0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v0

    .line 64
    .restart local p0    # "e":Lmf/org/apache/xerces/xni/XNIException;
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lorg/xml/sax/SAXException;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/SAXException;

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;
    .locals 7
    .param p0, "e"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;

    .prologue
    .line 68
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/SAXParseException;

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v5

    .line 73
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v6

    .line 70
    invoke-direct/range {v0 .. v6}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public static final toXMLInputSource(Lmf/javax/xml/transform/stream/StreamSource;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 6
    .param p0, "in"    # Lmf/javax/xml/transform/stream/StreamSource;

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 45
    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v4

    .line 44
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-object v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 49
    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 48
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 53
    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
