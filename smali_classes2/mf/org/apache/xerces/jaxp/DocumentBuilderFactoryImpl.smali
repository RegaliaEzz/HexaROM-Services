.class public Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;
.super Lmf/javax/xml/parsers/DocumentBuilderFactory;
.source "DocumentBuilderFactoryImpl.java"


# static fields
.field private static final CREATE_CDATA_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"

.field private static final CREATE_ENTITY_REF_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field private static final INCLUDE_COMMENTS_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field private static final INCLUDE_IGNORABLE_WHITESPACE:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"


# instance fields
.field private attributes:Ljava/util/Hashtable;

.field private fSecureProcess:Z

.field private features:Ljava/util/Hashtable;

.field private grammar:Lmf/javax/xml/validation/Schema;

.field private isXIncludeAware:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lmf/javax/xml/parsers/DocumentBuilderFactory;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->fSecureProcess:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    if-eqz v5, :cond_0

    .line 157
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 158
    .local v4, "val":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 175
    .end local v4    # "val":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 168
    .local v0, "domParser":Lmf/org/apache/xerces/parsers/DOMParser;
    :try_start_0
    new-instance v5, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-direct {v5, p0, v6, v7}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    invoke-virtual {v5}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/parsers/DOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    .line 173
    .local v2, "se1":Lorg/xml/sax/SAXException;
    :try_start_1
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z

    move-result v1

    .line 175
    .local v1, "result":Z
    if-eqz v1, :cond_1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v4, v5

    goto :goto_0

    :cond_1
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 176
    .end local v1    # "result":Z
    :catch_1
    move-exception v3

    .line 178
    .local v3, "se2":Lorg/xml/sax/SAXException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    const-string v5, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    iget-boolean v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->fSecureProcess:Z

    .line 234
    :cond_0
    :goto_0
    return v3

    .line 204
    :cond_1
    const-string v5, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    move-result v3

    goto :goto_0

    .line 207
    :cond_2
    const-string v5, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 208
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v3

    goto :goto_0

    .line 210
    :cond_3
    const-string v5, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 211
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isXIncludeAware()Z

    move-result v3

    goto :goto_0

    .line 213
    :cond_4
    const-string v5, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 214
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isIgnoringElementContentWhitespace()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 216
    :cond_5
    const-string v5, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 217
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isExpandEntityReferences()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 219
    :cond_6
    const-string v5, "http://apache.org/xml/features/include-comments"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 220
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isIgnoringComments()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 222
    :cond_7
    const-string v5, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 223
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isCoalescing()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 226
    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    if-eqz v3, :cond_9

    .line 227
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 228
    .local v2, "val":Ljava/lang/Object;
    if-eqz v2, :cond_9

    .line 229
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 233
    :cond_9
    :try_start_0
    new-instance v3, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-direct {v3, p0, v4, v5}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;

    move-result-object v0

    .line 234
    .local v0, "domParser":Lmf/org/apache/xerces/parsers/DOMParser;
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto/16 :goto_0

    .line 236
    .end local v0    # "domParser":Lmf/org/apache/xerces/parsers/DOMParser;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lmf/javax/xml/parsers/ParserConfigurationException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmf/javax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSchema()Lmf/javax/xml/validation/Schema;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->grammar:Lmf/javax/xml/validation/Schema;

    return-object v0
.end method

.method public isXIncludeAware()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isXIncludeAware:Z

    return v0
.end method

.method public newDocumentBuilder()Lmf/javax/xml/parsers/DocumentBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 90
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->grammar:Lmf/javax/xml/validation/Schema;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    new-instance v1, Lmf/javax/xml/parsers/ParserConfigurationException;

    .line 94
    const-string v2, "schema-already-specified"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v4, v3, v5

    .line 93
    invoke-static {v6, v2, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-direct {v1, v2}, Lmf/javax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    new-instance v1, Lmf/javax/xml/parsers/ParserConfigurationException;

    .line 99
    const-string v2, "schema-already-specified"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v4, v3, v5

    .line 98
    invoke-static {v6, v2, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-direct {v1, v2}, Lmf/javax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_1
    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->fSecureProcess:Z

    invoke-direct {v1, p0, v2, v3, v4}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/javax/xml/parsers/ParserConfigurationException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmf/javax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 121
    if-nez p2, :cond_1

    .line 122
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    if-nez v1, :cond_2

    .line 134
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    .line 137
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-direct {v1, p0, v2, v3}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 244
    const-string v3, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    iput-boolean p2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->fSecureProcess:Z

    .line 294
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string v3, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setNamespaceAware(Z)V

    goto :goto_0

    .line 253
    :cond_1
    const-string v3, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setValidating(Z)V

    goto :goto_0

    .line 257
    :cond_2
    const-string v3, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setXIncludeAware(Z)V

    goto :goto_0

    .line 261
    :cond_3
    const-string v3, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 262
    if-eqz p2, :cond_4

    :goto_1
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setIgnoringElementContentWhitespace(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 265
    :cond_5
    const-string v3, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 266
    if-eqz p2, :cond_6

    :goto_2
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setExpandEntityReferences(Z)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_2

    .line 269
    :cond_7
    const-string v3, "http://apache.org/xml/features/include-comments"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 270
    if-eqz p2, :cond_8

    :goto_3
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setIgnoringComments(Z)V

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_3

    .line 273
    :cond_9
    const-string v3, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 274
    if-eqz p2, :cond_a

    :goto_4
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setCoalescing(Z)V

    goto :goto_0

    :cond_a
    move v1, v2

    goto :goto_4

    .line 278
    :cond_b
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    if-nez v1, :cond_c

    .line 279
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    .line 281
    :cond_c
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    if-eqz p2, :cond_d

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-direct {v1, p0, v2, v3}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Lorg/xml/sax/SAXNotSupportedException;
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v1, Lmf/javax/xml/parsers/ParserConfigurationException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmf/javax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    .end local v0    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :cond_d
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    .line 290
    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Lorg/xml/sax/SAXNotRecognizedException;
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v1, Lmf/javax/xml/parsers/ParserConfigurationException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXNotRecognizedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmf/javax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSchema(Lmf/javax/xml/validation/Schema;)V
    .locals 0
    .param p1, "grammar"    # Lmf/javax/xml/validation/Schema;

    .prologue
    .line 188
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->grammar:Lmf/javax/xml/validation/Schema;

    .line 189
    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isXIncludeAware:Z

    .line 197
    return-void
.end method
