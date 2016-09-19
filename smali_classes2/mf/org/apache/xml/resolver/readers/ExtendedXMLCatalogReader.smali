.class public Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;
.super Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;
.source "ExtendedXMLCatalogReader.java"


# static fields
.field public static final extendedNamespaceName:Ljava/lang/String; = "http://nwalsh.com/xcatalog/1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 150
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->inExtensionNamespace()Z

    move-result v5

    .line 156
    .local v5, "inExtension":Z
    const/4 v4, -0x1

    .line 157
    .local v4, "entryType":I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 159
    .local v3, "entryArgs":Ljava/util/Vector;
    if-eqz p1, :cond_0

    .line 160
    const-string v7, "http://nwalsh.com/xcatalog/1.0"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 161
    if-nez v5, :cond_0

    .line 163
    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 164
    .local v6, "popURI":Ljava/lang/String;
    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    .local v0, "baseURI":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 167
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    .line 168
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v8, 0x4

    const-string v9, "(reset) xml:base"

    invoke-virtual {v7, v8, v9, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    :try_start_0
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v4, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 174
    .local v1, "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v7, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0    # "baseURI":Ljava/lang/String;
    .end local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    .end local v6    # "popURI":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 175
    .restart local v0    # "baseURI":Ljava/lang/String;
    .restart local v6    # "popURI":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 176
    .local v2, "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 177
    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "Invalid catalog entry type"

    invoke-virtual {v7, v10, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 179
    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "Invalid catalog entry (rbase)"

    invoke-virtual {v7, v10, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
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
    .line 68
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->inExtensionNamespace()Z

    move-result v5

    .line 70
    .local v5, "inExtension":Z
    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 72
    const/4 v4, -0x1

    .line 73
    .local v4, "entryType":I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 75
    .local v3, "entryArgs":Ljava/util/Vector;
    if-eqz p1, :cond_2

    const-string v6, "http://nwalsh.com/xcatalog/1.0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 76
    if-nez v5, :cond_2

    .line 79
    const-string v6, "xml:base"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 80
    const-string v6, "xml:base"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "baseURI":Ljava/lang/String;
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    .line 82
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x4

    const-string v8, "xml:base"

    invoke-virtual {v6, v7, v8, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_0
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v4, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 89
    .local v1, "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v6, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    :cond_0
    :goto_0
    const/4 v4, -0x1

    .line 99
    new-instance v3, Ljava/util/Vector;

    .end local v3    # "entryArgs":Ljava/util/Vector;
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 104
    .end local v0    # "baseURI":Ljava/lang/String;
    .restart local v3    # "entryArgs":Ljava/util/Vector;
    :goto_1
    const-string v6, "uriSuffix"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 105
    const-string v6, "suffix"

    const-string v7, "uri"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    sget v4, Lmf/org/apache/xml/resolver/Resolver;->URISUFFIX:I

    .line 107
    const-string v6, "suffix"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v6, "uri"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x4

    const-string v8, "uriSuffix"

    .line 111
    const-string v9, "suffix"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 112
    const-string v10, "uri"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 110
    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    :goto_2
    if-ltz v4, :cond_2

    .line 131
    :try_start_1
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v4, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 132
    .restart local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v6, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    .end local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogEntry;
    :cond_2
    :goto_3
    return-void

    .line 90
    .restart local v0    # "baseURI":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 91
    .local v2, "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 92
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    const-string v8, "Invalid catalog entry type"

    invoke-virtual {v6, v7, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 94
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    const-string v8, "Invalid catalog entry (base)"

    invoke-virtual {v6, v7, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v0    # "baseURI":Ljava/lang/String;
    .end local v2    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 114
    :cond_5
    const-string v6, "systemSuffix"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 115
    const-string v6, "suffix"

    const-string v7, "uri"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    sget v4, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMSUFFIX:I

    .line 117
    const-string v6, "suffix"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v6, "uri"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x4

    const-string v8, "systemSuffix"

    .line 121
    const-string v9, "suffix"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 122
    const-string v10, "uri"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 120
    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 126
    :cond_6
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    const-string v8, "Invalid catalog entry type"

    invoke-virtual {v6, v7, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 133
    :catch_1
    move-exception v2

    .line 134
    .restart local v2    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    .line 135
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    const-string v8, "Invalid catalog entry type"

    invoke-virtual {v6, v7, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 136
    :cond_7
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 137
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    const-string v8, "Invalid catalog entry"

    invoke-virtual {v6, v7, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
