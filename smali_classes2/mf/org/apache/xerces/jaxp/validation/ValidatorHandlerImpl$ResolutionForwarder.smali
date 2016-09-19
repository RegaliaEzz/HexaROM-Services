.class final Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;
.super Ljava/lang/Object;
.source "ValidatorHandlerImpl.java"

# interfaces
.implements Lorg/xml/sax/ext/EntityResolver2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResolutionForwarder"
.end annotation


# static fields
.field private static final XML_TYPE:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"


# instance fields
.field protected fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 0
    .param p1, "entityResolver"    # Lmf/org/w3c/dom/ls/LSResourceResolver;

    .prologue
    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->setEntityResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 1054
    return-void
.end method

.method private resolveSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "baseURI"    # Ljava/lang/String;

    .prologue
    .line 1131
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p2, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1137
    .end local p1    # "systemId":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1136
    .restart local p1    # "systemId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "ex":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    goto :goto_0
.end method


# virtual methods
.method public getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    return-object v0
.end method

.method public getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "baseURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1075
    const/4 v0, 0x0

    return-object v0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1125
    invoke-virtual {p0, v0, p1, v0, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    return-object v0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "baseURI"    # Ljava/lang/String;
    .param p4, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1084
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-eqz v0, :cond_4

    .line 1085
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    const-string v1, "http://www.w3.org/TR/REC-xml"

    const/4 v2, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Lmf/org/w3c/dom/ls/LSResourceResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ls/LSInput;

    move-result-object v12

    .line 1086
    .local v12, "lsInput":Lmf/org/w3c/dom/ls/LSInput;
    if-eqz v12, :cond_4

    .line 1087
    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v13

    .line 1088
    .local v13, "pubId":Ljava/lang/String;
    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v14

    .line 1089
    .local v14, "sysId":Ljava/lang/String;
    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v6

    .line 1090
    .local v6, "baseSystemId":Ljava/lang/String;
    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v8

    .line 1091
    .local v8, "charStream":Ljava/io/Reader;
    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v7

    .line 1092
    .local v7, "byteStream":Ljava/io/InputStream;
    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v9

    .line 1093
    .local v9, "data":Ljava/lang/String;
    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v10

    .line 1102
    .local v10, "encoding":Ljava/lang/String;
    new-instance v11, Lorg/xml/sax/InputSource;

    invoke-direct {v11}, Lorg/xml/sax/InputSource;-><init>()V

    .line 1103
    .local v11, "inputSource":Lorg/xml/sax/InputSource;
    invoke-virtual {v11, v13}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 1104
    if-eqz v6, :cond_0

    invoke-direct {p0, v14, v6}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->resolveSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .end local v14    # "sysId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v11, v14}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 1106
    if-eqz v8, :cond_2

    .line 1107
    invoke-virtual {v11, v8}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 1115
    :cond_1
    :goto_0
    invoke-virtual {v11, v10}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 1119
    .end local v6    # "baseSystemId":Ljava/lang/String;
    .end local v7    # "byteStream":Ljava/io/InputStream;
    .end local v8    # "charStream":Ljava/io/Reader;
    .end local v9    # "data":Ljava/lang/String;
    .end local v10    # "encoding":Ljava/lang/String;
    .end local v11    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v12    # "lsInput":Lmf/org/w3c/dom/ls/LSInput;
    .end local v13    # "pubId":Ljava/lang/String;
    :goto_1
    return-object v11

    .line 1109
    .restart local v6    # "baseSystemId":Ljava/lang/String;
    .restart local v7    # "byteStream":Ljava/io/InputStream;
    .restart local v8    # "charStream":Ljava/io/Reader;
    .restart local v9    # "data":Ljava/lang/String;
    .restart local v10    # "encoding":Ljava/lang/String;
    .restart local v11    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v12    # "lsInput":Lmf/org/w3c/dom/ls/LSInput;
    .restart local v13    # "pubId":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    .line 1110
    invoke-virtual {v11, v7}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 1112
    :cond_3
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    goto :goto_0

    .line 1119
    .end local v6    # "baseSystemId":Ljava/lang/String;
    .end local v7    # "byteStream":Ljava/io/InputStream;
    .end local v8    # "charStream":Ljava/io/Reader;
    .end local v9    # "data":Ljava/lang/String;
    .end local v10    # "encoding":Ljava/lang/String;
    .end local v11    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v12    # "lsInput":Lmf/org/w3c/dom/ls/LSInput;
    .end local v13    # "pubId":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public setEntityResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 0
    .param p1, "entityResolver"    # Lmf/org/w3c/dom/ls/LSResourceResolver;

    .prologue
    .line 1062
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    .line 1063
    return-void
.end method
