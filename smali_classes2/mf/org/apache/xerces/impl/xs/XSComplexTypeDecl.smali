.class public Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
.super Ljava/lang/Object;
.source "XSComplexTypeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;
.implements Lmf/org/w3c/dom/TypeInfo;


# static fields
.field private static final CT_HAS_TYPE_ID:S = 0x2s

.field private static final CT_IS_ABSTRACT:S = 0x1s

.field private static final CT_IS_ANONYMOUS:S = 0x4s

.field static final DERIVATION_ANY:I = 0x0

.field static final DERIVATION_EXTENSION:I = 0x2

.field static final DERIVATION_LIST:I = 0x8

.field static final DERIVATION_RESTRICTION:I = 0x1

.field static final DERIVATION_UNION:I = 0x4


# instance fields
.field fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

.field fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field fBlock:S

.field fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field fContentType:S

.field fDerivedBy:S

.field fFinal:S

.field fMiscFlags:S

.field fName:Ljava/lang/String;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field fTargetNamespace:Ljava/lang/String;

.field fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 59
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    .line 62
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    .line 65
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    .line 69
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    .line 72
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .line 75
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    .line 78
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 81
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 84
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 87
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 90
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 94
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 105
    return-void
.end method

.method private isDerivedByAny(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 4
    .param p1, "ancestorNS"    # Ljava/lang/String;
    .param p2, "ancestorName"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I
    .param p4, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .prologue
    const/4 v2, 0x1

    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, "oldType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    const/4 v0, 0x0

    .line 372
    .local v0, "derivedFrom":Z
    :goto_0
    if-eqz p4, :cond_0

    if-ne p4, v1, :cond_2

    :cond_0
    :goto_1
    move v2, v0

    .line 395
    :cond_1
    return v2

    .line 375
    :cond_2
    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 376
    if-nez p1, :cond_3

    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 377
    :cond_3
    if-eqz p1, :cond_5

    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 378
    :cond_4
    const/4 v0, 0x1

    .line 379
    goto :goto_1

    .line 384
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    .line 385
    if-nez v3, :cond_1

    .line 387
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByExtension(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    .line 388
    if-eqz v3, :cond_1

    .line 391
    move-object v1, p4

    .line 392
    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p4

    goto :goto_0
.end method

.method private isDerivedByExtension(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 4
    .param p1, "ancestorNS"    # Ljava/lang/String;
    .param p2, "ancestorName"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I
    .param p4, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "extension":Z
    const/4 v1, 0x0

    .line 481
    .local v1, "oldType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_0
    if-eqz p4, :cond_0

    if-ne p4, v1, :cond_2

    .line 531
    :cond_0
    const/4 v0, 0x0

    .end local v0    # "extension":Z
    .end local p4    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_1
    :goto_1
    return v0

    .line 483
    .restart local v0    # "extension":Z
    .restart local p4    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2
    if-eqz p1, :cond_3

    .line 484
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 485
    const-string v2, "anySimpleType"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 486
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    const-string v2, "anyType"

    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    :cond_3
    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 492
    if-nez p1, :cond_4

    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 493
    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 499
    :cond_5
    instance-of v2, p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v2, :cond_8

    .line 500
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 501
    const-string v2, "anyType"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 502
    const-string p2, "anySimpleType"

    .line 508
    :cond_6
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_7

    .line 510
    check-cast p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 512
    .end local p4    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    and-int/lit8 v2, p3, 0x1

    .line 510
    invoke-virtual {p4, p1, p2, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 509
    and-int/2addr v0, v2

    goto :goto_1

    .line 515
    .restart local p4    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_7
    check-cast p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .end local p4    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-virtual {p4, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 514
    and-int/2addr v0, v2

    goto :goto_1

    .restart local p4    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_8
    move-object v2, p4

    .line 523
    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getDerivationMethod()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 524
    or-int/lit8 v0, v0, 0x1

    .line 527
    :cond_9
    move-object v1, p4

    .line 528
    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p4

    goto/16 :goto_0
.end method

.method private isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 4
    .param p1, "ancestorNS"    # Ljava/lang/String;
    .param p2, "ancestorName"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I
    .param p4, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .prologue
    const/4 v2, 0x0

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "oldType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_0
    if-eqz p4, :cond_0

    if-ne p4, v0, :cond_1

    :cond_0
    move v1, v2

    .line 457
    .end local p4    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_1
    return v1

    .line 421
    .restart local p4    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_1
    if-eqz p1, :cond_2

    .line 422
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    const-string v1, "anySimpleType"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 424
    goto :goto_1

    .line 429
    :cond_2
    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    if-eqz p1, :cond_3

    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 431
    :cond_3
    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    if-nez p1, :cond_5

    .line 433
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 437
    :cond_5
    instance-of v1, p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v1, :cond_7

    .line 438
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 439
    const-string v1, "anyType"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 440
    const-string p2, "anySimpleType"

    .line 442
    :cond_6
    check-cast p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .end local p4    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-virtual {p4, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_1

    .restart local p4    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_7
    move-object v1, p4

    .line 448
    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getDerivationMethod()S

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_8

    move v1, v2

    .line 449
    goto :goto_1

    .line 452
    :cond_8
    move-object v0, p4

    .line 453
    invoke-interface {p4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p4

    goto :goto_0
.end method


# virtual methods
.method appendTypeInfo(Ljava/lang/StringBuffer;)V
    .locals 7
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "EMPTY"

    aput-object v2, v0, v3

    const-string v2, "SIMPLE"

    aput-object v2, v0, v4

    const-string v2, "ELEMENT"

    aput-object v2, v0, v5

    const-string v2, "MIXED"

    aput-object v2, v0, v6

    .line 207
    .local v0, "contentType":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "EMPTY"

    aput-object v2, v1, v3

    const-string v2, "EXTENSION"

    aput-object v2, v1, v4

    const-string v2, "RESTRICTION"

    aput-object v2, v1, v5

    .line 209
    .local v1, "derivedBy":[Ljava/lang/String;
    const-string v2, "Complex type name=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v2, :cond_0

    .line 211
    const-string v2, " base type name=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :cond_0
    const-string v2, " content type=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const-string v2, " isAbstract=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAbstract()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v2, " hasTypeId=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->containsTypeID()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const-string v2, " final=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v2, " block=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v2, :cond_1

    .line 219
    const-string v2, " particle=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :cond_1
    const-string v2, " derivedBy=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    return-void
.end method

.method public containsTypeID()Z
    .locals 1

    .prologue
    .line 155
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 4
    .param p1, "ancestorNS"    # Ljava/lang/String;
    .param p2, "ancestorName"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # S

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    if-nez p2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 248
    :cond_1
    if-eqz p1, :cond_2

    .line 249
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    const-string v3, "anyType"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 251
    goto :goto_0

    .line 255
    :cond_2
    move-object v0, p0

    .line 256
    .local v0, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_1
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 257
    if-nez p1, :cond_3

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 258
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 259
    :cond_4
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v0, v3, :cond_5

    .line 260
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne v0, v3, :cond_6

    .line 264
    :cond_5
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v0, v3, :cond_0

    .line 265
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq v0, v3, :cond_0

    move v1, v2

    .line 264
    goto :goto_0

    .line 261
    :cond_6
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    goto :goto_1
.end method

.method public derivedFromType(Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 4
    .param p1, "ancestor"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "derivationMethod"    # S

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    if-nez p1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v1

    .line 230
    :cond_1
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v3, :cond_2

    move v1, v2

    .line 231
    goto :goto_0

    .line 233
    :cond_2
    move-object v0, p0

    .line 234
    .local v0, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_1
    if-eq v0, p1, :cond_3

    .line 235
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v0, v3, :cond_3

    .line 236
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne v0, v3, :cond_4

    .line 240
    :cond_3
    if-ne v0, p1, :cond_0

    move v1, v2

    goto :goto_0

    .line 237
    :cond_4
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    goto :goto_1
.end method

.method public getAbstract()Z
    .locals 1

    .prologue
    .line 638
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getAnonymous()Z
    .locals 1

    .prologue
    .line 581
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object v0
.end method

.method public getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 722
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeWildcard()Lmf/org/apache/xerces/xs/XSWildcard;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeWildcard()Lmf/org/apache/xerces/xs/XSWildcard;

    move-result-object v0

    return-object v0
.end method

.method public getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 1
    .param p1, "cmBuilder"    # Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 1
    .param p1, "cmBuilder"    # Lmf/org/apache/xerces/impl/xs/models/CMBuilder;
    .param p2, "forUPA"    # Z

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-nez v0, :cond_2

    .line 174
    if-eqz p2, :cond_1

    .line 175
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->getContentModel(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 178
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->isCompactedForUPA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 182
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :goto_0
    monitor-exit p0

    return-object v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, p0, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->getContentModel(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 189
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContentType()S
    .locals 1

    .prologue
    .line 661
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    return v0
.end method

.method public getDerivationMethod()S
    .locals 1

    .prologue
    .line 606
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    return v0
.end method

.method public getFinal()S
    .locals 1

    .prologue
    .line 629
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    return v0
.end method

.method public getFinalSet()S
    .locals 1

    .prologue
    .line 140
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getParticle()Lmf/org/apache/xerces/xs/XSParticle;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    return-object v0
.end method

.method public getProhibitedSubstitutions()S
    .locals 1

    .prologue
    .line 697
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    return v0
.end method

.method public getSimpleType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x3

    return v0
.end method

.method public getTypeCategory()S
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0xf

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "ancestorNS"    # Ljava/lang/String;
    .param p2, "ancestorName"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 286
    if-nez p2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    if-eqz p1, :cond_2

    .line 291
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    const-string v2, "anyType"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    if-ne p3, v1, :cond_2

    .line 294
    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    move v0, v1

    .line 295
    goto :goto_0

    .line 299
    :cond_2
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_3

    .line 300
    invoke-direct {p0, p1, p2, p3, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    .line 301
    if-eqz v2, :cond_3

    move v0, v1

    .line 302
    goto :goto_0

    .line 307
    :cond_3
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_4

    .line 308
    invoke-direct {p0, p1, p2, p3, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByExtension(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    .line 309
    if-eqz v2, :cond_4

    move v0, v1

    .line 310
    goto :goto_0

    .line 315
    :cond_4
    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_5

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_9

    .line 316
    :cond_5
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_9

    .line 317
    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_9

    .line 319
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 320
    const-string v1, "anyType"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 321
    const-string p2, "anySimpleType"

    .line 324
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    const-string v2, "anyType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 325
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 326
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v1, :cond_8

    .line 328
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 330
    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v1, :cond_9

    .line 331
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v1, :cond_9

    .line 332
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto/16 :goto_0

    .line 341
    :cond_9
    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_0

    .line 342
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_0

    .line 343
    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_0

    .line 344
    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_0

    .line 345
    invoke-direct {p0, p1, p2, p3, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "typeNamespaceArg"    # Ljava/lang/String;
    .param p2, "typeNameArg"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I

    .prologue
    .line 730
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isFinal(S)Z
    .locals 1
    .param p1, "derivation"    # S

    .prologue
    .line 618
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProhibitedSubstitution(S)Z
    .locals 1
    .param p1, "prohibited"    # S

    .prologue
    .line 688
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 537
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    .line 538
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 539
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 540
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    .line 541
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    .line 542
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    .line 544
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    .line 547
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->reset()V

    .line 548
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    .line 549
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 550
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 551
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 552
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 553
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->clearXSObjectList()V

    .line 557
    :cond_0
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 558
    return-void
.end method

.method public setContainsTypeID()V
    .locals 1

    .prologue
    .line 162
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    .line 163
    return-void
.end method

.method public setIsAbstractType()V
    .locals 1

    .prologue
    .line 159
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    .line 160
    return-void
.end method

.method public setIsAnonymous()V
    .locals 1

    .prologue
    .line 165
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    .line 166
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0
    .param p1, "namespaceItem"    # Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .prologue
    .line 715
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 716
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "targetNamespace"    # Ljava/lang/String;
    .param p3, "baseType"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p4, "derivedBy"    # S
    .param p5, "schemaFinal"    # S
    .param p6, "block"    # S
    .param p7, "contentType"    # S
    .param p8, "isAbstract"    # Z
    .param p9, "attrGrp"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .param p10, "simpleType"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p11, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p12, "annotations"    # Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .prologue
    .line 113
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 115
    iput-short p4, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    .line 116
    iput-short p5, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    .line 117
    iput-short p6, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    .line 118
    iput-short p7, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    .line 119
    if-eqz p8, :cond_0

    .line 120
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    .line 121
    :cond_0
    iput-object p9, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .line 122
    iput-object p10, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 123
    iput-object p11, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 124
    iput-object p12, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->appendTypeInfo(Ljava/lang/StringBuffer;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
