.class public Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;
.super Ljava/lang/Object;
.source "CoreDOMImplementationImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMImplementation;
.implements Lmf/org/w3c/dom/ls/DOMImplementationLS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;,
        Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x2

.field static final singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;


# instance fields
.field private docAndDoctypeCounter:I

.field private freeSchemaValidatorIndex:I

.field private freeXML10DTDLoaderIndex:I

.field private freeXML10DTDValidatorIndex:I

.field private freeXML11DTDLoaderIndex:I

.field private freeXML11DTDValidatorIndex:I

.field private schemaValidators:[Ljava/lang/ref/SoftReference;

.field private schemaValidatorsCurrentSize:I

.field private xml10DTDLoaderCurrentSize:I

.field private xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

.field private xml10DTDValidators:[Ljava/lang/ref/SoftReference;

.field private xml10DTDValidatorsCurrentSize:I

.field private xml11DTDLoaderCurrentSize:I

.field private xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

.field private xml11DTDValidators:[Ljava/lang/ref/SoftReference;

.field private xml11DTDValidatorsCurrentSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-array v0, v1, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    .line 68
    new-array v0, v1, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    .line 69
    new-array v0, v1, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    .line 71
    iput v2, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    .line 72
    iput v2, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    .line 73
    iput v2, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    .line 75
    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidatorsCurrentSize:I

    .line 76
    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidatorsCurrentSize:I

    .line 77
    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidatorsCurrentSize:I

    .line 79
    new-array v0, v1, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    .line 80
    new-array v0, v1, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    .line 82
    iput v2, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    .line 83
    iput v2, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    .line 85
    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaderCurrentSize:I

    .line 86
    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaderCurrentSize:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I

    .line 57
    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized assignDocTypeNumber()I
    .locals 1

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized assignDocumentNumber()I
    .locals 1

    .prologue
    .line 675
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final checkQName(Ljava/lang/String;)V
    .locals 10
    .param p1, "qname"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x3a

    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 200
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 201
    .local v1, "index":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 202
    .local v2, "lastIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 206
    .local v3, "length":I
    if-eqz v1, :cond_0

    add-int/lit8 v6, v3, -0x1

    if-eq v1, v6, :cond_0

    if-eq v2, v1, :cond_1

    .line 209
    :cond_0
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    .line 210
    const-string v7, "NAMESPACE_ERR"

    .line 208
    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Lmf/org/w3c/dom/DOMException;

    const/16 v7, 0xe

    invoke-direct {v6, v7, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .line 214
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 216
    .local v5, "start":I
    if-lez v1, :cond_3

    .line 218
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 221
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    .line 222
    const-string v7, "INVALID_CHARACTER_ERR"

    .line 220
    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v6, v9, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .line 226
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_4

    .line 238
    add-int/lit8 v5, v1, 0x1

    .line 242
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 246
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    .line 247
    const-string v7, "INVALID_CHARACTER_ERR"

    .line 245
    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 249
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v6, v9, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .line 227
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v0    # "i":I
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 230
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    .line 231
    const-string v7, "INVALID_CHARACTER_ERR"

    .line 229
    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v6, v9, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .line 226
    .end local v4    # "msg":Ljava/lang/String;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v5, 0x1

    .restart local v0    # "i":I
    :goto_1
    if-lt v0, v3, :cond_7

    .line 261
    return-void

    .line 252
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 255
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    .line 256
    const-string v7, "INVALID_CHARACTER_ERR"

    .line 254
    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v6, v9, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .line 251
    .end local v4    # "msg":Ljava/lang/String;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected createDocument(Lmf/org/w3c/dom/DocumentType;)Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .locals 1
    .param p1, "doctype"    # Lmf/org/w3c/dom/DocumentType;

    .prologue
    .line 307
    new-instance v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;)V

    return-object v0
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/DocumentType;)Lmf/org/w3c/dom/Document;
    .locals 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "doctype"    # Lmf/org/w3c/dom/DocumentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 289
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lmf/org/w3c/dom/DocumentType;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 292
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    .line 293
    const-string v4, "WRONG_DOCUMENT_ERR"

    .line 294
    const/4 v5, 0x0

    .line 291
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 297
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->createDocument(Lmf/org/w3c/dom/DocumentType;)Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    .line 299
    .local v0, "doc":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    .line 300
    :cond_1
    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    .line 301
    .local v1, "e":Lmf/org/w3c/dom/Element;
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 303
    .end local v1    # "e":Lmf/org/w3c/dom/Element;
    :cond_2
    return-object v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;
    .locals 2
    .param p1, "qualifiedName"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->checkQName(Ljava/lang/String;)V

    .line 196
    new-instance v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLSInput()Lmf/org/w3c/dom/ls/LSInput;
    .locals 1

    .prologue
    .line 444
    new-instance v0, Lmf/org/apache/xerces/dom/DOMInputImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMInputImpl;-><init>()V

    return-object v0
.end method

.method public createLSOutput()Lmf/org/w3c/dom/ls/LSOutput;
    .locals 1

    .prologue
    .line 693
    new-instance v0, Lmf/org/apache/xerces/dom/DOMOutputImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMOutputImpl;-><init>()V

    return-object v0
.end method

.method public createLSParser(SLjava/lang/String;)Lmf/org/w3c/dom/ls/LSParser;
    .locals 4
    .param p1, "mode"    # S
    .param p2, "schemaType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_1

    .line 387
    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    const-string/jumbo v1, "http://www.w3.org/TR/REC-xml"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 391
    :cond_0
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    .line 392
    const-string v2, "NOT_SUPPORTED_ERR"

    .line 393
    const/4 v3, 0x0

    .line 390
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 396
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 397
    const-string/jumbo v1, "http://www.w3.org/TR/REC-xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    new-instance v1, Lmf/org/apache/xerces/parsers/DOMParserImpl;

    .line 400
    const-string/jumbo v2, "mf.org.apache.xerces.parsers.DTDConfiguration"

    .line 399
    invoke-direct {v1, v2, p2}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :goto_0
    return-object v1

    :cond_2
    new-instance v1, Lmf/org/apache/xerces/parsers/DOMParserImpl;

    .line 407
    const-string/jumbo v2, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    .line 406
    invoke-direct {v1, v2, p2}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createLSSerializer()Lmf/org/w3c/dom/ls/LSSerializer;
    .locals 4

    .prologue
    .line 428
    :try_start_0
    const-string/jumbo v1, "org.apache.xml.serializer.dom3.LSSerializerImpl"

    .line 429
    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    .line 427
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    .line 430
    .local v0, "serializerClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/ls/LSSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v0    # "serializerClass":Ljava/lang/Class;
    :goto_0
    return-object v1

    .line 432
    :catch_0
    move-exception v1

    .line 435
    new-instance v1, Lmf/org/apache/xml/serialize/DOMSerializerImpl;

    invoke-direct {v1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;-><init>()V

    goto :goto_0
.end method

.method final declared-synchronized getDTDLoader(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    .locals 6
    .param p1, "xmlVersion"    # Ljava/lang/String;

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    const-string v3, "1.1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 592
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    if-gez v3, :cond_0

    .line 607
    const-string/jumbo v3, "mf.org.apache.xerces.impl.dtd.XML11DTDProcessor"

    .line 608
    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 609
    const/4 v5, 0x1

    .line 606
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v3

    .line 605
    check-cast v3, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 625
    :goto_1
    monitor-exit p0

    return-object v2

    .line 594
    :cond_0
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    aget-object v1, v3, v4

    .line 595
    .local v1, "ref":Ljava/lang/ref/SoftReference;
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    .line 596
    .local v0, "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    if-eqz v3, :cond_1

    .line 597
    iget-object v2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    .line 598
    .local v2, "val":Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    const/4 v3, 0x0

    iput-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    .line 599
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 591
    .end local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;
    .end local v2    # "val":Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 602
    .restart local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
    .restart local v1    # "ref":Ljava/lang/ref/SoftReference;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_0

    .line 615
    .end local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    aget-object v1, v3, v4

    .line 616
    .restart local v1    # "ref":Ljava/lang/ref/SoftReference;
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    .line 617
    .restart local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    if-eqz v3, :cond_3

    .line 618
    iget-object v2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    .line 619
    .restart local v2    # "val":Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    const/4 v3, 0x0

    iput-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    .line 620
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    goto :goto_1

    .line 623
    .end local v2    # "val":Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 613
    .end local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;
    :cond_4
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    if-gez v3, :cond_2

    .line 625
    new-instance v2, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 314
    sget-object v5, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v5, p1, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 315
    const-string v5, "+XPath"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 318
    :try_start_0
    const-string/jumbo v5, "org.apache.xpath.domapi.XPathEvaluatorImpl"

    .line 319
    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x1

    .line 317
    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    .line 323
    .local v3, "xpathClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 324
    .local v2, "interfaces":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-lt v1, v5, :cond_1

    .line 337
    .end local v1    # "i":I
    .end local v2    # "interfaces":[Ljava/lang/Class;
    .end local v3    # "xpathClass":Ljava/lang/Class;
    :cond_0
    :goto_1
    return-object v4

    .line 325
    .restart local v1    # "i":I
    .restart local v2    # "interfaces":[Ljava/lang/Class;
    .restart local v3    # "xpathClass":Ljava/lang/Class;
    :cond_1
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 326
    const-string/jumbo v6, "org.w3c.dom.xpath.XPathEvaluator"

    .line 325
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 326
    if-eqz v5, :cond_2

    .line 327
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 324
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "i":I
    .end local v2    # "interfaces":[Ljava/lang/Class;
    .end local v3    # "xpathClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v4, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    goto :goto_1
.end method

.method declared-synchronized getValidator(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/RevalidationHandler;
    .locals 6
    .param p1, "schemaType"    # Ljava/lang/String;
    .param p2, "xmlVersion"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 452
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "http://www.w3.org/2001/XMLSchema"

    if-ne p1, v3, :cond_3

    .line 456
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    if-gez v3, :cond_1

    .line 471
    const-string/jumbo v3, "mf.org.apache.xerces.impl.xs.XMLSchemaValidator"

    .line 472
    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 473
    const/4 v5, 0x1

    .line 470
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v3

    .line 469
    check-cast v3, Lmf/org/apache/xerces/impl/RevalidationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 519
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v2

    .line 458
    :cond_1
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    aget-object v1, v3, v4

    .line 459
    .local v1, "ref":Ljava/lang/ref/SoftReference;
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    .line 460
    .local v0, "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_2

    .line 461
    iget-object v2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    .line 462
    .local v2, "val":Lmf/org/apache/xerces/impl/RevalidationHandler;
    const/4 v3, 0x0

    iput-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    .line 463
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 452
    .end local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;
    .end local v2    # "val":Lmf/org/apache/xerces/impl/RevalidationHandler;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 466
    .restart local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    .restart local v1    # "ref":Ljava/lang/ref/SoftReference;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_0

    .line 475
    .end local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;
    :cond_3
    const-string/jumbo v3, "http://www.w3.org/TR/REC-xml"

    if-ne p1, v3, :cond_0

    .line 477
    const-string v3, "1.1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 478
    :goto_2
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    if-gez v3, :cond_4

    .line 493
    const-string/jumbo v3, "mf.org.apache.xerces.impl.dtd.XML11DTDValidator"

    .line 494
    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 495
    const/4 v5, 0x1

    .line 492
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v3

    .line 491
    check-cast v3, Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-object v2, v3

    goto :goto_1

    .line 480
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    aget-object v1, v3, v4

    .line 481
    .restart local v1    # "ref":Ljava/lang/ref/SoftReference;
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    .line 482
    .restart local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    if-eqz v0, :cond_5

    iget-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_5

    .line 483
    iget-object v2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    .line 484
    .restart local v2    # "val":Lmf/org/apache/xerces/impl/RevalidationHandler;
    const/4 v3, 0x0

    iput-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    .line 485
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    goto :goto_1

    .line 488
    .end local v2    # "val":Lmf/org/apache/xerces/impl/RevalidationHandler;
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_2

    .line 501
    .end local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;
    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    aget-object v1, v3, v4

    .line 502
    .restart local v1    # "ref":Ljava/lang/ref/SoftReference;
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    .line 503
    .restart local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    if-eqz v0, :cond_7

    iget-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_7

    .line 504
    iget-object v2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    .line 505
    .restart local v2    # "val":Lmf/org/apache/xerces/impl/RevalidationHandler;
    const/4 v3, 0x0

    iput-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    .line 506
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    goto/16 :goto_1

    .line 509
    .end local v2    # "val":Lmf/org/apache/xerces/impl/RevalidationHandler;
    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 499
    .end local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;
    :cond_8
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    if-gez v3, :cond_6

    .line 514
    const-string/jumbo v3, "mf.org.apache.xerces.impl.dtd.XMLDTDValidator"

    .line 515
    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 516
    const/4 v5, 0x1

    .line 513
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v3

    .line 512
    check-cast v3, Lmf/org/apache/xerces/impl/RevalidationHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 124
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v5

    .line 132
    .local v0, "anyVersion":Z
    :goto_0
    const-string v7, "+XPath"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 133
    if-nez v0, :cond_0

    const-string v7, "3.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 136
    :cond_0
    :try_start_0
    const-string/jumbo v7, "org.apache.xpath.domapi.XPathEvaluatorImpl"

    .line 137
    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    .line 135
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v4

    .line 141
    .local v4, "xpathClass":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 142
    .local v3, "interfaces":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v3

    if-lt v2, v7, :cond_3

    .line 156
    .end local v2    # "i":I
    .end local v3    # "interfaces":[Ljava/lang/Class;
    .end local v4    # "xpathClass":Ljava/lang/Class;
    :cond_1
    :goto_2
    return v6

    .end local v0    # "anyVersion":Z
    :cond_2
    move v0, v6

    .line 124
    goto :goto_0

    .line 143
    .restart local v0    # "anyVersion":Z
    .restart local v2    # "i":I
    .restart local v3    # "interfaces":[Ljava/lang/Class;
    .restart local v4    # "xpathClass":Ljava/lang/Class;
    :cond_3
    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 144
    const-string/jumbo v8, "org.w3c.dom.xpath.XPathEvaluator"

    .line 143
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 144
    if-nez v7, :cond_1

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 148
    .end local v2    # "i":I
    .end local v3    # "interfaces":[Ljava/lang/Class;
    .end local v4    # "xpathClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v6, v5

    .line 149
    goto :goto_2

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v7, "+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 154
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 157
    :cond_5
    const-string v7, "Core"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 158
    if-nez v0, :cond_1

    .line 159
    const-string v7, "1.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 160
    const-string v7, "2.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 161
    const-string v7, "3.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 162
    :cond_6
    const-string v7, "XML"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 163
    if-nez v0, :cond_1

    .line 164
    const-string v7, "1.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 165
    const-string v7, "2.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 166
    const-string v7, "3.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 167
    :cond_7
    const-string v7, "XMLVersion"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 168
    if-nez v0, :cond_1

    .line 169
    const-string v7, "1.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 170
    const-string v7, "1.1"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 171
    :cond_8
    const-string v7, "LS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 172
    if-nez v0, :cond_1

    .line 173
    const-string v7, "3.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 174
    :cond_9
    const-string v7, "ElementTraversal"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 175
    if-nez v0, :cond_1

    .line 176
    const-string v7, "1.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_a
    move v6, v5

    .line 156
    goto/16 :goto_2
.end method

.method final declared-synchronized releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V
    .locals 7
    .param p1, "xmlVersion"    # Ljava/lang/String;
    .param p2, "loader"    # Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    const-string v3, "1.1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 633
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    .line 634
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    array-length v3, v3

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    if-ne v3, v4, :cond_0

    .line 636
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaderCurrentSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaderCurrentSize:I

    .line 637
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaderCurrentSize:I

    new-array v1, v3, [Ljava/lang/ref/SoftReference;

    .line 638
    .local v1, "newarray":[Ljava/lang/ref/SoftReference;
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    .line 641
    .end local v1    # "newarray":[Ljava/lang/ref/SoftReference;
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    aget-object v2, v3, v4

    .line 642
    .local v2, "ref":Ljava/lang/ref/SoftReference;
    if-eqz v2, :cond_1

    .line 643
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    .line 644
    .local v0, "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
    if-eqz v0, :cond_1

    .line 645
    iput-object p2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    .end local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
    :goto_0
    monitor-exit p0

    return-void

    .line 649
    :cond_1
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    new-instance v5, Ljava/lang/ref/SoftReference;

    new-instance v6, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    invoke-direct {v6, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;-><init>(Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 632
    .end local v2    # "ref":Ljava/lang/ref/SoftReference;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 653
    :cond_2
    :try_start_2
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    .line 654
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    array-length v3, v3

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    if-ne v3, v4, :cond_3

    .line 656
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaderCurrentSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaderCurrentSize:I

    .line 657
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaderCurrentSize:I

    new-array v1, v3, [Ljava/lang/ref/SoftReference;

    .line 658
    .restart local v1    # "newarray":[Ljava/lang/ref/SoftReference;
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    .line 661
    .end local v1    # "newarray":[Ljava/lang/ref/SoftReference;
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    aget-object v2, v3, v4

    .line 662
    .restart local v2    # "ref":Ljava/lang/ref/SoftReference;
    if-eqz v2, :cond_4

    .line 663
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    .line 664
    .restart local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
    if-eqz v0, :cond_4

    .line 665
    iput-object p2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    goto :goto_0

    .line 669
    .end local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    new-instance v5, Ljava/lang/ref/SoftReference;

    new-instance v6, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    invoke-direct {v6, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;-><init>(Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized releaseValidator(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/RevalidationHandler;)V
    .locals 7
    .param p1, "schemaType"    # Ljava/lang/String;
    .param p2, "xmlVersion"    # Ljava/lang/String;
    .param p3, "validator"    # Lmf/org/apache/xerces/impl/RevalidationHandler;

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "http://www.w3.org/2001/XMLSchema"

    if-ne p1, v3, :cond_3

    .line 526
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    .line 527
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    array-length v3, v3

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    if-ne v3, v4, :cond_0

    .line 529
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidatorsCurrentSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidatorsCurrentSize:I

    .line 530
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidatorsCurrentSize:I

    new-array v1, v3, [Ljava/lang/ref/SoftReference;

    .line 531
    .local v1, "newarray":[Ljava/lang/ref/SoftReference;
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 532
    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    .line 534
    .end local v1    # "newarray":[Ljava/lang/ref/SoftReference;
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    aget-object v2, v3, v4

    .line 535
    .local v2, "ref":Ljava/lang/ref/SoftReference;
    if-eqz v2, :cond_2

    .line 536
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    .line 537
    .local v0, "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    if-eqz v0, :cond_2

    .line 538
    iput-object p3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    .end local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    .end local v2    # "ref":Ljava/lang/ref/SoftReference;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 542
    .restart local v2    # "ref":Ljava/lang/ref/SoftReference;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    new-instance v5, Ljava/lang/ref/SoftReference;

    new-instance v6, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    invoke-direct {v6, p3}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;-><init>(Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 525
    .end local v2    # "ref":Ljava/lang/ref/SoftReference;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 544
    :cond_3
    :try_start_2
    const-string/jumbo v3, "http://www.w3.org/TR/REC-xml"

    if-ne p1, v3, :cond_1

    .line 546
    const-string v3, "1.1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 547
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    .line 548
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    array-length v3, v3

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    if-ne v3, v4, :cond_4

    .line 550
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidatorsCurrentSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidatorsCurrentSize:I

    .line 551
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidatorsCurrentSize:I

    new-array v1, v3, [Ljava/lang/ref/SoftReference;

    .line 552
    .restart local v1    # "newarray":[Ljava/lang/ref/SoftReference;
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    .line 555
    .end local v1    # "newarray":[Ljava/lang/ref/SoftReference;
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    aget-object v2, v3, v4

    .line 556
    .restart local v2    # "ref":Ljava/lang/ref/SoftReference;
    if-eqz v2, :cond_5

    .line 557
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    .line 558
    .restart local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    if-eqz v0, :cond_5

    .line 559
    iput-object p3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    goto :goto_0

    .line 563
    .end local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    new-instance v5, Ljava/lang/ref/SoftReference;

    new-instance v6, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    invoke-direct {v6, p3}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;-><init>(Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4

    goto :goto_0

    .line 567
    .end local v2    # "ref":Ljava/lang/ref/SoftReference;
    :cond_6
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    .line 568
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    array-length v3, v3

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    if-ne v3, v4, :cond_7

    .line 570
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidatorsCurrentSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidatorsCurrentSize:I

    .line 571
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidatorsCurrentSize:I

    new-array v1, v3, [Ljava/lang/ref/SoftReference;

    .line 572
    .restart local v1    # "newarray":[Ljava/lang/ref/SoftReference;
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    .line 575
    .end local v1    # "newarray":[Ljava/lang/ref/SoftReference;
    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    aget-object v2, v3, v4

    .line 576
    .restart local v2    # "ref":Ljava/lang/ref/SoftReference;
    if-eqz v2, :cond_8

    .line 577
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    .line 578
    .restart local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    if-eqz v0, :cond_8

    .line 579
    iput-object p3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    goto/16 :goto_0

    .line 583
    .end local v0    # "holder":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    new-instance v5, Ljava/lang/ref/SoftReference;

    new-instance v6, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    invoke-direct {v6, p3}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;-><init>(Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
