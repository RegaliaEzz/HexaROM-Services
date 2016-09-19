.class public Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
.super Ljava/lang/Object;
.source "XSAttributeGroupDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;


# static fields
.field private static final INITIAL_SIZE:I = 0x5


# instance fields
.field public fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field fAttrUseNum:I

.field protected fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

.field public fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

.field public fIDAttrName:Ljava/lang/String;

.field public fName:Ljava/lang/String;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field public fTargetNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 54
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 56
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 65
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 42
    return-void
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;I)[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .locals 3
    .param p0, "oldArray"    # [Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 314
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 315
    .local v0, "newArray":[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    return-object v0
.end method


# virtual methods
.method public addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;
    .locals 3
    .param p1, "attrUse"    # Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .prologue
    .line 75
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 76
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    .line 87
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->resize([Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;I)[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 90
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    aput-object p1, v0, v1

    .line 92
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 83
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSAnnotation;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v0, v1, :cond_0

    .line 110
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 105
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v1, p1, :cond_1

    .line 106
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    if-ne v1, p2, :cond_1

    .line 107
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    goto :goto_1

    .line 104
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeUseNoProhibited(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v0, v1, :cond_0

    .line 121
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 115
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v1, p1, :cond_1

    .line 116
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    if-ne v1, p2, :cond_1

    .line 117
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 118
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    goto :goto_1

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 365
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0
.end method

.method public getAttributeWildcard()Lmf/org/apache/xerces/xs/XSWildcard;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x5

    return v0
.end method

.method public removeProhibitedAttrs()V
    .locals 6

    .prologue
    .line 125
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-nez v4, :cond_0

    .line 157
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 128
    .local v0, "count":I
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    new-array v3, v4, [Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 129
    .local v3, "uses":[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v2, v4, :cond_1

    .line 134
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 135
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    goto :goto_0

    .line 130
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v4, v4, v2

    iget-short v4, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 131
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v4, v4, v2

    aput-object v4, v3, v0

    move v0, v1

    .line 129
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public replaceAttributeUse(Lmf/org/apache/xerces/xs/XSAttributeUse;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V
    .locals 2
    .param p1, "oldUse"    # Lmf/org/apache/xerces/xs/XSAttributeUse;
    .param p2, "newUse"    # Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v0, v1, :cond_0

    .line 101
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 98
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aput-object p2, v1, v0

    .line 96
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    .line 322
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v0, v1, :cond_0

    .line 327
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    .line 328
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 329
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 330
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    .line 332
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aput-object v2, v1, v0

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0
    .param p1, "namespaceItem"    # Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .prologue
    .line 397
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 398
    return-void
.end method

.method public validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;
    .locals 13
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "baseGroup"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .prologue
    .line 172
    const/4 v6, 0x0

    .line 173
    .local v6, "errorArgs":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 174
    .local v1, "attrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    const/4 v0, 0x0

    .line 175
    .local v0, "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    const/4 v3, 0x0

    .line 176
    .local v3, "baseAttrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    const/4 v2, 0x0

    .line 178
    .local v2, "baseAttrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v10, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v7, v10, :cond_0

    .line 270
    const/4 v7, 0x0

    :goto_1
    iget v10, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v7, v10, :cond_e

    .line 291
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz v10, :cond_12

    .line 292
    iget-object v10, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v10, :cond_10

    .line 293
    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/Object;

    .end local v6    # "errorArgs":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v6, v10

    const/4 v10, 0x1

    const-string v11, "derivation-ok-restriction.4.1"

    aput-object v11, v6, v10

    .restart local v6    # "errorArgs":[Ljava/lang/Object;
    move-object v10, v6

    .line 309
    :goto_2
    return-object v10

    .line 180
    :cond_0
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v10, v7

    .line 181
    iget-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 184
    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {p2, v10, v11}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v3

    .end local v3    # "baseAttrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 185
    .restart local v3    # "baseAttrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    if-eqz v3, :cond_b

    .line 190
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->getRequired()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->getRequired()Z

    move-result v10

    if-nez v10, :cond_2

    .line 191
    const/4 v10, 0x4

    new-array v6, v10, [Ljava/lang/Object;

    .end local v6    # "errorArgs":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v6, v10

    const/4 v10, 0x1

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v11, 0x2

    .line 192
    iget-short v10, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-nez v10, :cond_1

    const-string v10, "optional"

    :goto_3
    aput-object v10, v6, v11

    const/4 v10, 0x3

    .line 193
    const-string v11, "derivation-ok-restriction.2.1.1"

    aput-object v11, v6, v10

    .restart local v6    # "errorArgs":[Ljava/lang/Object;
    move-object v10, v6

    .line 194
    goto :goto_2

    .line 192
    .end local v6    # "errorArgs":[Ljava/lang/Object;
    :cond_1
    const-string v10, "prohibited"

    goto :goto_3

    .line 199
    .restart local v6    # "errorArgs":[Ljava/lang/Object;
    :cond_2
    iget-short v10, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 178
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 203
    :cond_4
    iget-object v2, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 207
    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 208
    iget-object v11, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 209
    iget-object v12, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v12}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinal()S

    move-result v12

    .line 207
    invoke-static {v10, v11, v12}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivationOk(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v10

    .line 209
    if-nez v10, :cond_5

    .line 210
    const/4 v10, 0x5

    new-array v6, v10, [Ljava/lang/Object;

    .end local v6    # "errorArgs":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v6, v10

    const/4 v10, 0x1

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v11}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x3

    .line 211
    iget-object v11, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v11}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x4

    const-string v11, "derivation-ok-restriction.2.1.2"

    aput-object v11, v6, v10

    .restart local v6    # "errorArgs":[Ljava/lang/Object;
    move-object v10, v6

    .line 212
    goto :goto_2

    .line 219
    :cond_5
    iget-short v10, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v10, :cond_6

    .line 220
    iget-short v4, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 221
    .local v4, "baseConsType":I
    :goto_4
    iget-short v10, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v10, :cond_7

    .line 222
    iget-short v8, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 224
    .local v8, "thisConstType":I
    :goto_5
    const/4 v10, 0x2

    if-ne v4, v10, :cond_3

    .line 226
    const/4 v10, 0x2

    if-eq v8, v10, :cond_8

    .line 227
    const/4 v10, 0x3

    new-array v6, v10, [Ljava/lang/Object;

    .end local v6    # "errorArgs":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v6, v10

    const/4 v10, 0x1

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    .line 228
    const-string v11, "derivation-ok-restriction.2.1.3.a"

    aput-object v11, v6, v10

    .restart local v6    # "errorArgs":[Ljava/lang/Object;
    move-object v10, v6

    .line 229
    goto/16 :goto_2

    .line 220
    .end local v4    # "baseConsType":I
    .end local v8    # "thisConstType":I
    :cond_6
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v4

    goto :goto_4

    .line 222
    .restart local v4    # "baseConsType":I
    :cond_7
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v8

    goto :goto_5

    .line 232
    .restart local v8    # "thisConstType":I
    :cond_8
    iget-object v10, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v10, :cond_9

    .line 233
    iget-object v5, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 234
    .local v5, "baseFixedValue":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    :goto_6
    iget-object v10, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v10, :cond_a

    .line 235
    iget-object v9, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 236
    .local v9, "thisFixedValue":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    :goto_7
    iget-object v10, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v11, v9, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 237
    const/4 v10, 0x5

    new-array v6, v10, [Ljava/lang/Object;

    .end local v6    # "errorArgs":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v6, v10

    const/4 v10, 0x1

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x3

    .line 238
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x4

    const-string v11, "derivation-ok-restriction.2.1.3.b"

    aput-object v11, v6, v10

    .restart local v6    # "errorArgs":[Ljava/lang/Object;
    move-object v10, v6

    .line 239
    goto/16 :goto_2

    .line 233
    .end local v5    # "baseFixedValue":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .end local v9    # "thisFixedValue":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    :cond_9
    iget-object v5, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    goto :goto_6

    .line 235
    .restart local v5    # "baseFixedValue":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    :cond_a
    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    goto :goto_7

    .line 251
    .end local v4    # "baseConsType":I
    .end local v5    # "baseFixedValue":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .end local v8    # "thisConstType":I
    :cond_b
    iget-object v10, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v10, :cond_c

    .line 252
    const/4 v10, 0x3

    new-array v6, v10, [Ljava/lang/Object;

    .end local v6    # "errorArgs":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v6, v10

    const/4 v10, 0x1

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    .line 253
    const-string v11, "derivation-ok-restriction.2.2.a"

    aput-object v11, v6, v10

    .restart local v6    # "errorArgs":[Ljava/lang/Object;
    move-object v10, v6

    .line 254
    goto/16 :goto_2

    .line 256
    :cond_c
    iget-object v10, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 257
    const/4 v10, 0x4

    new-array v6, v10, [Ljava/lang/Object;

    .end local v6    # "errorArgs":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v6, v10

    const/4 v10, 0x1

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v11, 0x2

    .line 258
    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    if-nez v10, :cond_d

    const-string v10, ""

    :goto_8
    aput-object v10, v6, v11

    const/4 v10, 0x3

    .line 259
    const-string v11, "derivation-ok-restriction.2.2.b"

    aput-object v11, v6, v10

    .restart local v6    # "errorArgs":[Ljava/lang/Object;
    move-object v10, v6

    .line 260
    goto/16 :goto_2

    .line 258
    .end local v6    # "errorArgs":[Ljava/lang/Object;
    :cond_d
    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    goto :goto_8

    .line 272
    .restart local v6    # "errorArgs":[Ljava/lang/Object;
    :cond_e
    iget-object v10, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v3, v10, v7

    .line 274
    iget-short v10, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    .line 276
    iget-object v2, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 278
    iget-object v10, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v11, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v10

    if-nez v10, :cond_f

    .line 279
    const/4 v10, 0x3

    new-array v6, v10, [Ljava/lang/Object;

    .end local v6    # "errorArgs":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v6, v10

    const/4 v10, 0x1

    iget-object v11, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v11, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    .line 280
    const-string v11, "derivation-ok-restriction.3"

    aput-object v11, v6, v10

    .restart local v6    # "errorArgs":[Ljava/lang/Object;
    move-object v10, v6

    .line 281
    goto/16 :goto_2

    .line 270
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 296
    :cond_10
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v11, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {v10, v11}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->isSubsetOf(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 297
    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/Object;

    .end local v6    # "errorArgs":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v6, v10

    const/4 v10, 0x1

    const-string v11, "derivation-ok-restriction.4.2"

    aput-object v11, v6, v10

    .restart local v6    # "errorArgs":[Ljava/lang/Object;
    move-object v10, v6

    .line 298
    goto/16 :goto_2

    .line 300
    :cond_11
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v11, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {v10, v11}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->weakerProcessContents(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 301
    const/4 v10, 0x4

    new-array v6, v10, [Ljava/lang/Object;

    .end local v6    # "errorArgs":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v6, v10

    const/4 v10, 0x1

    .line 302
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x2

    .line 303
    iget-object v11, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x3

    .line 304
    const-string v11, "derivation-ok-restriction.4.3"

    aput-object v11, v6, v10

    .restart local v6    # "errorArgs":[Ljava/lang/Object;
    move-object v10, v6

    .line 305
    goto/16 :goto_2

    .line 309
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_2
.end method
