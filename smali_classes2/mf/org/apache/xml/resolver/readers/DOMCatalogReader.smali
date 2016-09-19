.class public Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;
.super Ljava/lang/Object;
.source "DOMCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/CatalogReader;


# instance fields
.field protected namespaceMap:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    .line 128
    return-void
.end method


# virtual methods
.method public getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "rootElement"    # Ljava/lang/String;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 22
    .param p1, "catalog"    # Lmf/org/apache/xml/resolver/Catalog;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v9, 0x0

    .line 160
    .local v9, "factory":Lmf/javax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x0

    .line 162
    .local v3, "builder":Lmf/javax/xml/parsers/DocumentBuilder;
    invoke-static {}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->newInstance()Lmf/javax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 163
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 164
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 166
    :try_start_0
    invoke-virtual {v9}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Lmf/javax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 171
    const/4 v6, 0x0

    .line 175
    .local v6, "doc":Lmf/org/w3c/dom/Document;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lmf/javax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lmf/org/w3c/dom/Document;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 180
    invoke-interface {v6}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v16

    .line 182
    .local v16, "root":Lmf/org/w3c/dom/Element;
    invoke-static/range {v16 .. v16}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getNamespaceURI(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v13

    .line 183
    .local v13, "namespaceURI":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getLocalName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v12

    .line 185
    .local v12, "localName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, "domParserClass":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 189
    if-nez v13, :cond_1

    .line 190
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "No Catalog parser for "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 190
    invoke-virtual/range {v18 .. v20}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 167
    .end local v6    # "doc":Lmf/org/w3c/dom/Document;
    .end local v8    # "domParserClass":Ljava/lang/String;
    .end local v12    # "localName":Ljava/lang/String;
    .end local v13    # "namespaceURI":Ljava/lang/String;
    .end local v16    # "root":Lmf/org/w3c/dom/Element;
    :catch_0
    move-exception v15

    .line 168
    .local v15, "pce":Lmf/javax/xml/parsers/ParserConfigurationException;
    new-instance v18, Lmf/org/apache/xml/resolver/CatalogException;

    const/16 v19, 0x6

    invoke-direct/range {v18 .. v19}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v18

    .line 176
    .end local v15    # "pce":Lmf/javax/xml/parsers/ParserConfigurationException;
    .restart local v6    # "doc":Lmf/org/w3c/dom/Document;
    :catch_1
    move-exception v17

    .line 177
    .local v17, "se":Lorg/xml/sax/SAXException;
    new-instance v18, Lmf/org/apache/xml/resolver/CatalogException;

    const/16 v19, 0x5

    invoke-direct/range {v18 .. v19}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v18

    .line 193
    .end local v17    # "se":Lorg/xml/sax/SAXException;
    .restart local v8    # "domParserClass":Ljava/lang/String;
    .restart local v12    # "localName":Ljava/lang/String;
    .restart local v13    # "namespaceURI":Ljava/lang/String;
    .restart local v16    # "root":Lmf/org/w3c/dom/Element;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "No Catalog parser for {"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "}"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 195
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 193
    invoke-virtual/range {v18 .. v20}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_2
    const/4 v7, 0x0

    .line 203
    .local v7, "domParser":Lmf/org/apache/xml/resolver/readers/DOMCatalogParser;
    :try_start_2
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "domParser":Lmf/org/apache/xml/resolver/readers/DOMCatalogParser;
    check-cast v7, Lmf/org/apache/xml/resolver/readers/DOMCatalogParser;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_5

    .line 218
    .restart local v7    # "domParser":Lmf/org/apache/xml/resolver/readers/DOMCatalogParser;
    invoke-interface/range {v16 .. v16}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v14

    .line 219
    .local v14, "node":Lmf/org/w3c/dom/Node;
    :goto_1
    if-eqz v14, :cond_0

    .line 220
    move-object/from16 v0, p1

    invoke-interface {v7, v0, v14}, Lmf/org/apache/xml/resolver/readers/DOMCatalogParser;->parseCatalogEntry(Lmf/org/apache/xml/resolver/Catalog;Lmf/org/w3c/dom/Node;)V

    .line 221
    invoke-interface {v14}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v14

    goto :goto_1

    .line 204
    .end local v7    # "domParser":Lmf/org/apache/xml/resolver/readers/DOMCatalogParser;
    .end local v14    # "node":Lmf/org/w3c/dom/Node;
    :catch_2
    move-exception v5

    .line 205
    .local v5, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-string v20, "Cannot load XML Catalog Parser class"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v18, Lmf/org/apache/xml/resolver/CatalogException;

    const/16 v19, 0x6

    invoke-direct/range {v18 .. v19}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v18

    .line 207
    .end local v5    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v11

    .line 208
    .local v11, "ie":Ljava/lang/InstantiationException;
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-string v20, "Cannot instantiate XML Catalog Parser class"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v18, Lmf/org/apache/xml/resolver/CatalogException;

    const/16 v19, 0x6

    invoke-direct/range {v18 .. v19}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v18

    .line 210
    .end local v11    # "ie":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v10

    .line 211
    .local v10, "iae":Ljava/lang/IllegalAccessException;
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-string v20, "Cannot access XML Catalog Parser class"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v18, Lmf/org/apache/xml/resolver/CatalogException;

    const/16 v19, 0x6

    invoke-direct/range {v18 .. v19}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v18

    .line 213
    .end local v10    # "iae":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v4

    .line 214
    .local v4, "cce":Ljava/lang/ClassCastException;
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-string v20, "Cannot cast XML Catalog Parser class"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v18, Lmf/org/apache/xml/resolver/CatalogException;

    const/16 v19, 0x6

    invoke-direct/range {v18 .. v19}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v18
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/lang/String;)V
    .locals 3
    .param p1, "catalog"    # Lmf/org/apache/xml/resolver/Catalog;
    .param p2, "fileUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 245
    .local v1, "urlCon":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V

    .line 246
    return-void
.end method

.method public setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "rootElement"    # Ljava/lang/String;
    .param p3, "parserClass"    # Ljava/lang/String;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
