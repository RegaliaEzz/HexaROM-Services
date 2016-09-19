.class final Lmf/org/apache/xerces/xpointer/ShortHandPointer;
.super Ljava/lang/Object;
.source "ShortHandPointer.java"

# interfaces
.implements Lmf/org/apache/xerces/xpointer/XPointerPart;


# instance fields
.field private fIsFragmentResolved:Z

.field fMatchingChildCount:I

.field private fShortHandPointer:Ljava/lang/String;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    .line 80
    iput v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    .line 80
    iput v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    .line 59
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 60
    return-void
.end method

.method private hasMatchingIdentifier(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z
    .locals 3
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .param p4, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 133
    .local v1, "normalizedValue":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 167
    .end local v0    # "i":I
    :cond_0
    if-eqz v1, :cond_2

    .line 168
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    const/4 v2, 0x1

    .line 172
    :goto_1
    return v2

    .line 140
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->getSchemaDeterminedID(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object v1

    .line 141
    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->getChildrenSchemaDeterminedID(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object v1

    .line 150
    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->getDTDDeterminedID(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object v1

    .line 160
    if-nez v1, :cond_0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getChildrenSchemaDeterminedID(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 1
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDDeterminedID(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 2
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSchemaDeterminedID(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 4
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v1

    .line 205
    .local v1, "augs":Lmf/org/apache/xerces/xni/Augmentations;
    const-string v3, "ATTRIBUTE_PSVI"

    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 204
    check-cast v0, Lmf/org/apache/xerces/xs/AttributePSVI;

    .line 207
    .local v0, "attrPSVI":Lmf/org/apache/xerces/xs/AttributePSVI;
    if-eqz v0, :cond_1

    .line 221
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v2

    .line 222
    .local v2, "typeDef":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v2, :cond_0

    .line 223
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v2

    .line 227
    :cond_0
    if-eqz v2, :cond_1

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .end local v2    # "typeDef":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v3

    .line 234
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    return-object v0
.end method

.method public isChildFragmentResolved()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFragmentResolved()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    return v0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 1
    .param p1, "part"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    .line 71
    return-void
.end method

.method public resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z
    .locals 1
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .param p4, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    .line 91
    :cond_0
    if-nez p4, :cond_3

    .line 92
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-nez v0, :cond_1

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->hasMatchingIdentifier(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    .line 96
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    if-eqz v0, :cond_2

    .line 97
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    .line 113
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    return v0

    .line 99
    :cond_3
    const/4 v0, 0x2

    if-ne p4, v0, :cond_4

    .line 100
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-nez v0, :cond_2

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->hasMatchingIdentifier(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    goto :goto_0

    .line 108
    :cond_4
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    if-eqz v0, :cond_2

    .line 109
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    goto :goto_0
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 0
    .param p1, "schemeData"    # Ljava/lang/String;

    .prologue
    .line 294
    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "schemeName"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    .line 287
    return-void
.end method
