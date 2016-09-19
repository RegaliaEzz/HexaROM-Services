.class final Lmf/org/apache/xml/serialize/SerializerFactoryImpl;
.super Lmf/org/apache/xml/serialize/SerializerFactory;
.source "SerializerFactoryImpl.java"


# instance fields
.field private _method:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lmf/org/apache/xml/serialize/SerializerFactory;-><init>()V

    .line 50
    iput-object p1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v2, "xhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const-string v1, "http://apache.org/xml/serializer"

    const-string v2, "MethodNotSupported"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .locals 6
    .param p1, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    .line 97
    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v1, Lmf/org/apache/xml/serialize/XMLSerializer;

    invoke-direct {v1, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 104
    :goto_0
    return-object v1

    .line 99
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Lmf/org/apache/xml/serialize/HTMLSerializer;

    invoke-direct {v1, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v2, "xhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    new-instance v1, Lmf/org/apache/xml/serialize/XHTMLSerializer;

    invoke-direct {v1, p1}, Lmf/org/apache/xml/serialize/XHTMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    new-instance v1, Lmf/org/apache/xml/serialize/TextSerializer;

    invoke-direct {v1}, Lmf/org/apache/xml/serialize/TextSerializer;-><init>()V

    goto :goto_0

    .line 106
    :cond_3
    const-string v1, "http://apache.org/xml/serializer"

    const-string v2, "MethodNotSupported"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected getSupportedMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->getSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v0

    .line 90
    .local v0, "serializer":Lmf/org/apache/xml/serialize/Serializer;
    invoke-interface {v0, p1}, Lmf/org/apache/xml/serialize/Serializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    .line 91
    return-object v0
.end method

.method public makeSerializer(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    .line 77
    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->getSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v0

    .line 78
    .local v0, "serializer":Lmf/org/apache/xml/serialize/Serializer;
    invoke-interface {v0, p1}, Lmf/org/apache/xml/serialize/Serializer;->setOutputCharStream(Ljava/io/Writer;)V

    .line 79
    return-object v0
.end method

.method public makeSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .locals 1
    .param p1, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->getSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v0

    .line 66
    .local v0, "serializer":Lmf/org/apache/xml/serialize/Serializer;
    invoke-interface {v0, p1}, Lmf/org/apache/xml/serialize/Serializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 67
    return-object v0
.end method
