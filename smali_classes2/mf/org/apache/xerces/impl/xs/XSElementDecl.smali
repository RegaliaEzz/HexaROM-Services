.class public Lmf/org/apache/xerces/impl/xs/XSElementDecl;
.super Ljava/lang/Object;
.source "XSElementDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSElementDeclaration;


# static fields
.field private static final ABSTRACT:S = 0x8s

.field private static final CONSTRAINT_MASK:S = 0x3s

.field static final INITIAL_SIZE:I = 0x2

.field private static final NILLABLE:S = 0x4s

.field public static final SCOPE_ABSENT:S = 0x0s

.field public static final SCOPE_GLOBAL:S = 0x1s

.field public static final SCOPE_LOCAL:S = 0x2s


# instance fields
.field public fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field public fBlock:S

.field public fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field private fDescription:Ljava/lang/String;

.field fEnclosingCT:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

.field public fFinal:S

.field fIDCPos:I

.field fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

.field fMiscFlags:S

.field public fName:Ljava/lang/String;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field public fScope:S

.field public fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field public fTargetNamespace:Ljava/lang/String;

.field public fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field public fUnresolvedTypeName:Lmf/org/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 60
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fUnresolvedTypeName:Lmf/org/apache/xerces/xni/QName;

    .line 62
    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    .line 63
    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    .line 65
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fEnclosingCT:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 67
    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    .line 69
    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    .line 71
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 73
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 75
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 78
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .line 82
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 135
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDescription:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 3
    .param p0, "oldArray"    # [Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 127
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .line 128
    .local v0, "newArray":[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    return-object v0
.end method


# virtual methods
.method public addIDConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 3
    .param p1, "idc"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .prologue
    .line 110
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->resize([Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .line 113
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    aput-object p1, v0, v1

    .line 114
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 170
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAbstract()Z
    .locals 1

    .prologue
    .line 340
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActualVC()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 370
    :goto_0
    return-object v0

    .line 372
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getActualVCType()S
    .locals 1

    .prologue
    .line 376
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    .line 377
    const/16 v0, 0x2d

    .line 376
    :goto_0
    return v0

    .line 378
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    goto :goto_0
.end method

.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

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
    .line 354
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getConstraintType()S
    .locals 1

    .prologue
    .line 251
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    and-int/lit8 v0, v0, 0x3

    int-to-short v0, v0

    return v0
.end method

.method public getConstraintValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    .line 262
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisallowedSubstitutions()S
    .locals 1

    .prologue
    .line 333
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    return v0
.end method

.method public getEnclosingCTDefinition()Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fEnclosingCT:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-object v0
.end method

.method public getIDConstraints()[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 120
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->resize([Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .line 123
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    goto :goto_0
.end method

.method public getIdentityConstraints()Lmf/org/apache/xerces/xs/XSNamedMap;
    .locals 3

    .prologue
    .line 280
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    return-object v0
.end method

.method public getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 382
    :goto_0
    return-object v0

    .line 384
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getNillable()Z
    .locals 1

    .prologue
    .line 273
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScope()S
    .locals 1

    .prologue
    .line 235
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    return v0
.end method

.method public getSubstitutionGroupAffiliation()Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object v0
.end method

.method public getSubstitutionGroupExclusions()S
    .locals 1

    .prologue
    .line 312
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    return v0
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x2

    return v0
.end method

.method public getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public getValueConstraintValue()Lmf/org/apache/xerces/xs/XSValue;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 161
    .local v0, "code":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 162
    shl-int/lit8 v1, v0, 0x10

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 163
    :cond_0
    return v0
.end method

.method public isDisallowedSubstitution(S)Z
    .locals 1
    .param p1, "disallowed"    # S

    .prologue
    .line 324
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubstitutionGroupExclusion(S)Z
    .locals 1
    .param p1, "exclusion"    # S

    .prologue
    .line 300
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 177
    iput-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    .line 178
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    .line 179
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    .line 180
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 181
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fUnresolvedTypeName:Lmf/org/apache/xerces/xni/QName;

    .line 182
    iput-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    .line 183
    iput-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    .line 184
    iput-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    .line 185
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 186
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 187
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    if-lt v0, v1, :cond_0

    .line 193
    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    .line 194
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    aput-object v2, v1, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setConstraintType(S)V
    .locals 2
    .param p1, "constraintType"    # S

    .prologue
    .line 91
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    and-int/lit8 v1, v1, 0x3

    xor-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    .line 93
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    and-int/lit8 v1, p1, 0x3

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    .line 94
    return-void
.end method

.method public setIsAbstract()V
    .locals 1

    .prologue
    .line 99
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    .line 100
    return-void
.end method

.method public setIsGlobal()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    .line 103
    return-void
.end method

.method public setIsLocal(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 1
    .param p1, "enclosingCT"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .prologue
    .line 105
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    .line 106
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fEnclosingCT:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 107
    return-void
.end method

.method public setIsNillable()V
    .locals 1

    .prologue
    .line 96
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fMiscFlags:S

    .line 97
    return-void
.end method

.method setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0
    .param p1, "namespaceItem"    # Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .prologue
    .line 366
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 367
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 137
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDescription:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    .line 140
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 141
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 140
    :goto_0
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    .line 139
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 142
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDescription:Ljava/lang/String;

    .line 153
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_0
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDescription:Ljava/lang/String;

    return-object v1

    .line 141
    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDescription:Ljava/lang/String;

    goto :goto_1
.end method
