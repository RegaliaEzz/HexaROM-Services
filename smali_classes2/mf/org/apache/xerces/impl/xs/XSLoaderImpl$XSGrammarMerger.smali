.class final Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;
.super Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;
.source "XSLoaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XSGrammarMerger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;-><init>()V

    return-void
.end method

.method private mergeSchemaGrammars(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 6
    .param p1, "cachedGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "newGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 232
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v4

    .line 233
    .local v4, "map":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v3

    .line 234
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 242
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v4

    .line 243
    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v3

    .line 244
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    .line 252
    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v4

    .line 253
    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v3

    .line 254
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v3, :cond_4

    .line 262
    const/4 v5, 0x5

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v4

    .line 263
    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v3

    .line 264
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v3, :cond_6

    .line 272
    const/4 v5, 0x7

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v4

    .line 273
    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v3

    .line 274
    const/4 v2, 0x0

    :goto_4
    if-lt v2, v3, :cond_8

    .line 282
    const/16 v5, 0xb

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v4

    .line 283
    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v3

    .line 284
    const/4 v2, 0x0

    :goto_5
    if-lt v2, v3, :cond_a

    .line 296
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    .line 297
    .local v0, "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    .line 298
    const/4 v2, 0x0

    :goto_6
    if-lt v2, v3, :cond_c

    .line 302
    return-void

    .line 235
    .end local v0    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_0
    invoke-interface {v4, v2}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 236
    .local v1, "decl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v5

    if-nez v5, :cond_1

    .line 237
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 234
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "decl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :cond_2
    invoke-interface {v4, v2}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 246
    .local v1, "decl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v5

    if-nez v5, :cond_3

    .line 247
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    .line 244
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    .end local v1    # "decl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    :cond_4
    invoke-interface {v4, v2}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 256
    .local v1, "decl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    if-nez v5, :cond_5

    .line 257
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    .line 254
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 265
    .end local v1    # "decl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_6
    invoke-interface {v4, v2}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .line 266
    .local v1, "decl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v5

    if-nez v5, :cond_7

    .line 267
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    .line 264
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 275
    .end local v1    # "decl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    :cond_8
    invoke-interface {v4, v2}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 276
    .local v1, "decl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v5

    if-nez v5, :cond_9

    .line 277
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V

    .line 274
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 285
    .end local v1    # "decl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    :cond_a
    invoke-interface {v4, v2}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 286
    .local v1, "decl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v5

    if-nez v5, :cond_b

    .line 287
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V

    .line 284
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 299
    .end local v1    # "decl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .restart local v0    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_c
    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6
.end method

.method private toSchemaGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1
    .param p1, "grammar"    # Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    .line 226
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v0, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .end local p1    # "grammar":Lmf/org/apache/xerces/xni/grammars/Grammar;
    :goto_0
    return-object p1

    .restart local p1    # "grammar":Lmf/org/apache/xerces/xni/grammars/Grammar;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 3
    .param p1, "grammar"    # Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    .line 213
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v2

    invoke-super {p0, v2}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;->toSchemaGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 214
    .local v0, "cachedGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v0, :cond_1

    .line 215
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;->toSchemaGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .line 216
    .local v1, "newGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v1, :cond_0

    .line 217
    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;->mergeSchemaGrammars(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 223
    .end local v1    # "newGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    goto :goto_0
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "grammarType"    # Ljava/lang/String;

    .prologue
    .line 317
    const/4 v0, 0x0

    new-array v0, v0, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-object v0
.end method
