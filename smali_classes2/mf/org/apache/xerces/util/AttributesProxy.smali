.class public final Lmf/org/apache/xerces/util/AttributesProxy;
.super Ljava/lang/Object;
.source "AttributesProxy.java"

# interfaces
.implements Lorg/xml/sax/AttributeList;
.implements Lorg/xml/sax/ext/Attributes2;


# instance fields
.field private fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 51
    return-void
.end method


# virtual methods
.method public getAttributes()Lmf/org/apache/xerces/xni/XMLAttributes;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    return-object v0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 122
    :goto_0
    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 81
    iget-object v1, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "uri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "uri":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "uri":Ljava/lang/String;
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDeclared(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 132
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 135
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 136
    iget-object v1, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v1

    .line 137
    const-string v2, "ATTRIBUTE_DECLARED"

    .line 136
    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeclared(Ljava/lang/String;)Z
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/AttributesProxy;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 146
    iget-object v2, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    .line 147
    const-string v3, "ATTRIBUTE_DECLARED"

    .line 146
    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isDeclared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/AttributesProxy;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 156
    iget-object v2, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    .line 157
    const-string v3, "ATTRIBUTE_DECLARED"

    .line 156
    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isSpecified(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 161
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 164
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v0

    return v0
.end method

.method public isSpecified(Ljava/lang/String;)Z
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/AttributesProxy;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 169
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v1

    return v1
.end method

.method public isSpecified(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/AttributesProxy;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v1

    return v1
.end method

.method public setAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    .line 59
    iput-object p1, p0, Lmf/org/apache/xerces/util/AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 60
    return-void
.end method
