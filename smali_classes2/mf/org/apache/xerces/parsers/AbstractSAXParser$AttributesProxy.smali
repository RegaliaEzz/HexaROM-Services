.class public final Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;
.super Ljava/lang/Object;
.source "AbstractSAXParser.java"

# interfaces
.implements Lorg/xml/sax/AttributeList;
.implements Lorg/xml/sax/ext/Attributes2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/parsers/AbstractSAXParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AttributesProxy"
.end annotation


# instance fields
.field protected fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 2249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 2319
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    .prologue
    .line 2323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    .line 2324
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 2269
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2289
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 2273
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2277
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 2293
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2297
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 2301
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2302
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2284
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v0

    .line 2285
    .local v0, "uri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "uri":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "uri":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 2306
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2310
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 2314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2315
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDeclared(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 2330
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 2331
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2333
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2334
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v1

    .line 2335
    const-string v2, "ATTRIBUTE_DECLARED"

    .line 2334
    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2333
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeclared(Ljava/lang/String;)Z
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 2339
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 2340
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2341
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2343
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2344
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    .line 2345
    const-string v3, "ATTRIBUTE_DECLARED"

    .line 2344
    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2343
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isDeclared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 2349
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2350
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2351
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2353
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2354
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    .line 2355
    const-string v3, "ATTRIBUTE_DECLARED"

    .line 2354
    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2353
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isSpecified(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2359
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 2360
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2362
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v0

    return v0
.end method

.method public isSpecified(Ljava/lang/String;)Z
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 2366
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 2367
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2368
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2370
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v1

    return v1
.end method

.method public isSpecified(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 2374
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2375
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2376
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2378
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v1

    return v1
.end method

.method public setAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    .line 2265
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 2266
    return-void
.end method
