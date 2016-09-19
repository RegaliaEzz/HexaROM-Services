.class public Lmf/org/apache/xerces/impl/xs/XSConstraints;
.super Ljava/lang/Object;
.source "XSConstraints.java"


# static fields
.field private static final ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

.field static final OCCURRENCE_UNKNOWN:I = -0x2

.field static final STRING_TYPE:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private static fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v1, "string"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->STRING_TYPE:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 75
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSConstraints$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ElementDefaultValidImmediate(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 7
    .param p0, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .param p3, "vinfo"    # Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .prologue
    const/4 v5, 0x0

    .line 286
    const/4 v2, 0x0

    .line 291
    .local v2, "dv":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v6, 0x10

    if-ne v4, v6, :cond_3

    move-object v2, p0

    .line 292
    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 315
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 316
    .local v0, "actualValue":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 320
    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSConstraints;->STRING_TYPE:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 324
    :cond_1
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 326
    if-eqz p3, :cond_2

    .line 327
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p2, p3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 332
    .end local v0    # "actualValue":Ljava/lang/Object;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move-object v1, p0

    .line 298
    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 301
    .local v1, "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    iget-short v4, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 302
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 303
    goto :goto_0

    .line 305
    :cond_4
    iget-short v4, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 306
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v5

    .line 307
    goto :goto_1

    :cond_5
    move-object v0, v5

    .line 310
    goto :goto_1

    .line 328
    .end local v1    # "ctype":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    :catch_0
    move-exception v3

    .local v3, "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    move-object v0, v5

    .line 329
    goto :goto_1
.end method

.method private static addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 2
    .param p0, "v"    # Ljava/util/Vector;
    .param p1, "d"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    .line 993
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 994
    .local v0, "p":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 995
    const/4 v1, 0x1

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 996
    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 998
    return-void
.end method

.method private static checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 5
    .param p0, "derived"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p1, "base"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "block"    # S

    .prologue
    const/16 v4, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    if-ne p0, p1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    and-int/2addr v3, p2

    if-eqz v3, :cond_2

    move v1, v2

    .line 241
    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 246
    .local v0, "directBase":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eq v0, p1, :cond_0

    .line 251
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq v0, v1, :cond_3

    .line 252
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne v0, v1, :cond_4

    :cond_3
    move v1, v2

    .line 253
    goto :goto_0

    .line 258
    :cond_4
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    if-ne v1, v4, :cond_5

    .line 259
    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .end local v0    # "directBase":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-static {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v1

    goto :goto_0

    .line 262
    .restart local v0    # "directBase":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_5
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_8

    .line 264
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    if-ne v1, v4, :cond_6

    .line 267
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v1, :cond_7

    .line 268
    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 272
    :cond_6
    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .end local v0    # "directBase":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    move-object v1, p1

    .line 273
    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 272
    invoke-static {v0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v1

    goto :goto_0

    .restart local v0    # "directBase":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_7
    move v1, v2

    .line 270
    goto :goto_0

    :cond_8
    move v1, v2

    .line 276
    goto :goto_0
.end method

.method public static checkComplexDerivationOk(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 1
    .param p0, "derived"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p1, "base"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "block"    # S

    .prologue
    .line 174
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p0, v0, :cond_1

    .line 175
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkElementDeclsConsistent(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 7
    .param p0, "type"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p1, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p2, "elemDeclHash"    # Lmf/org/apache/xerces/util/SymbolHash;
    .param p3, "sgHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 541
    iget-short v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 543
    .local v3, "pType":I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 563
    :cond_0
    return-void

    .line 546
    :cond_1
    if-ne v3, v6, :cond_2

    .line 547
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 548
    .local v0, "elem":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    invoke-static {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->findElemInTable(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/util/SymbolHash;)V

    .line 550
    iget-short v5, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    if-ne v5, v6, :cond_0

    .line 552
    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v4

    .line 553
    .local v4, "subGroup":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 554
    aget-object v5, v4, v2

    invoke-static {p0, v5, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->findElemInTable(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/util/SymbolHash;)V

    .line 553
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 560
    .end local v0    # "elem":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .end local v2    # "i":I
    .end local v4    # "subGroup":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :cond_2
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 561
    .local v1, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget v5, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v2, v5, :cond_0

    .line 562
    iget-object v5, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v5, v5, v2

    invoke-static {p0, v5, p2, p3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkElementDeclsConsistent(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static checkIDConstraintRestriction(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0
    .param p0, "derivedElemDecl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p1, "baseElemDecl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 1152
    return-void
.end method

.method private static checkMapAndSum(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 13
    .param p0, "dChildren"    # Ljava/util/Vector;
    .param p1, "min1"    # I
    .param p2, "max1"    # I
    .param p3, "dSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p4, "bChildren"    # Ljava/util/Vector;
    .param p5, "min2"    # I
    .param p6, "max2"    # I
    .param p7, "bSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 1411
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {p1, p2, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1412
    new-instance v9, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v10, "rcase-MapAndSum.2"

    .line 1413
    const/4 v8, 0x4

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v12, 0x1

    .line 1414
    const/4 v8, -0x1

    if-ne p2, v8, :cond_0

    const-string v8, "unbounded"

    :goto_0
    aput-object v8, v11, v12

    const/4 v8, 0x2

    .line 1415
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v12, 0x3

    .line 1416
    const/4 v8, -0x1

    move/from16 v0, p6

    if-ne v0, v8, :cond_1

    const-string v8, "unbounded"

    :goto_1
    aput-object v8, v11, v12

    .line 1412
    invoke-direct {v9, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v9

    .line 1414
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1416
    :cond_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1419
    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1420
    .local v2, "count1":I
    invoke-virtual/range {p4 .. p4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1422
    .local v3, "count2":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v2, :cond_3

    .line 1437
    return-void

    .line 1424
    :cond_3
    invoke-virtual {p0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1425
    .local v6, "particle1":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-lt v5, v3, :cond_4

    .line 1435
    new-instance v8, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v9, "rcase-MapAndSum.1"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v8

    .line 1426
    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1428
    .local v7, "particle2":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-static {v6, v0, v7, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1431
    :catch_0
    move-exception v8

    .line 1425
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private static checkNSCompat(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;IIZ)V
    .locals 8
    .param p0, "elem"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p1, "min1"    # I
    .param p2, "max1"    # I
    .param p3, "wildcard"    # Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .param p4, "min2"    # I
    .param p5, "max2"    # I
    .param p6, "checkWCOccurrence"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 1171
    if-eqz p6, :cond_2

    invoke-static {p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1172
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v2, "rcase-NSCompat.2"

    .line 1173
    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    .line 1174
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v0, v3, v4

    .line 1175
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 1176
    if-ne p2, v5, :cond_0

    const-string v0, "unbounded"

    :goto_0
    aput-object v0, v3, v7

    const/4 v0, 0x3

    .line 1177
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x4

    .line 1178
    if-ne p5, v5, :cond_1

    const-string v0, "unbounded"

    :goto_1
    aput-object v0, v3, v4

    .line 1172
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1176
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1178
    :cond_1
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1182
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1183
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v1, "rcase-NSCompat.1"

    .line 1184
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 1183
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1187
    :cond_3
    return-void
.end method

.method private static checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V
    .locals 9
    .param p0, "children"    # Ljava/util/Vector;
    .param p1, "min1"    # I
    .param p2, "max1"    # I
    .param p3, "dSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p4, "wildcard"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p5, "min2"    # I
    .param p6, "max2"    # I
    .param p7, "checkWCOccurrence"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 1224
    if-eqz p7, :cond_2

    invoke-static {p1, p2, p5, p6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1225
    new-instance v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v6, "rcase-NSRecurseCheckCardinality.2"

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1226
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x1

    .line 1227
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    const-string v4, "unbounded"

    :goto_0
    aput-object v4, v7, v8

    const/4 v4, 0x2

    .line 1228
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x3

    .line 1229
    const/4 v4, -0x1

    if-ne p6, v4, :cond_1

    const-string v4, "unbounded"

    :goto_1
    aput-object v4, v7, v8

    .line 1225
    invoke-direct {v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 1227
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1229
    :cond_1
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1233
    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1235
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v0, :cond_3

    .line 1247
    return-void

    .line 1236
    :cond_3
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1237
    .local v3, "particle1":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, p3, p4, v4, v5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1243
    .end local v3    # "particle1":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :catch_0
    move-exception v1

    .line 1244
    .local v1, "e":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    new-instance v4, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "rcase-NSRecurseCheckCardinality.1"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4
.end method

.method private static checkNSSubset(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;II)V
    .locals 8
    .param p0, "dWildcard"    # Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .param p1, "min1"    # I
    .param p2, "max1"    # I
    .param p3, "bWildcard"    # Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .param p4, "min2"    # I
    .param p5, "max2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 1194
    invoke-static {p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1195
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v2, "rcase-NSSubset.2"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    .line 1196
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 1197
    if-ne p2, v5, :cond_0

    const-string v0, "unbounded"

    :goto_0
    aput-object v0, v3, v6

    .line 1198
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const/4 v4, 0x3

    .line 1199
    if-ne p5, v5, :cond_1

    const-string v0, "unbounded"

    :goto_1
    aput-object v0, v3, v4

    .line 1195
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1197
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1199
    :cond_1
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1203
    :cond_2
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->isSubsetOf(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1204
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v1, "rcase-NSSubset.1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1207
    :cond_3
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->weakerProcessContents(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1208
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v1, "rcase-NSSubset.3"

    .line 1209
    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1210
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1208
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1213
    :cond_4
    return-void
.end method

.method private static checkNameAndTypeOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSElementDecl;II)V
    .locals 8
    .param p0, "dElement"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p1, "dMin"    # I
    .param p2, "dMax"    # I
    .param p3, "bElement"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p4, "bMin"    # I
    .param p5, "bMax"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 1065
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v4, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 1066
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v4, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eq v3, v4, :cond_1

    .line 1067
    :cond_0
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    .line 1068
    const-string v4, "rcase-NameAndTypeOK.1"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1069
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 1067
    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 1075
    :cond_1
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1076
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v4, "rcase-NameAndTypeOK.2"

    .line 1077
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 1076
    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 1083
    :cond_2
    invoke-static {p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1084
    new-instance v4, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "rcase-NameAndTypeOK.3"

    .line 1085
    const/4 v3, 0x5

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1086
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v3, 0x1

    .line 1087
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x2

    .line 1088
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    const-string v3, "unbounded"

    :goto_0
    aput-object v3, v6, v7

    const/4 v3, 0x3

    .line 1089
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x4

    .line 1090
    const/4 v3, -0x1

    if-ne p5, v3, :cond_4

    const-string v3, "unbounded"

    :goto_1
    aput-object v3, v6, v7

    .line 1084
    invoke-direct {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 1088
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1090
    :cond_4
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1096
    :cond_5
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 1098
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 1099
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v4, "rcase-NameAndTypeOK.4.a"

    .line 1100
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1099
    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 1104
    :cond_6
    const/4 v2, 0x0

    .line 1105
    .local v2, "isSimple":Z
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_7

    .line 1106
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 1107
    :cond_7
    const/4 v2, 0x1

    .line 1111
    :cond_8
    if-nez v2, :cond_9

    iget-object v3, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1112
    :cond_9
    if-eqz v2, :cond_b

    iget-object v3, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1113
    :cond_a
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v4, "rcase-NameAndTypeOK.4.b"

    .line 1114
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1115
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 1116
    iget-object v7, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1113
    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 1123
    .end local v2    # "isSimple":Z
    :cond_b
    invoke-static {p0, p3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkIDConstraintRestriction(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 1128
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    .line 1129
    .local v0, "blockSet1":I
    iget-short v1, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    .line 1130
    .local v1, "blockSet2":I
    and-int v3, v0, v1

    if-ne v3, v1, :cond_c

    .line 1131
    if-nez v0, :cond_d

    if-eqz v1, :cond_d

    .line 1132
    :cond_c
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v4, "rcase-NameAndTypeOK.6"

    .line 1133
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 1132
    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 1139
    :cond_d
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v4, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1140
    const/16 v5, 0x19

    .line 1139
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v3

    .line 1140
    if-nez v3, :cond_e

    .line 1141
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v4, "rcase-NameAndTypeOK.7"

    .line 1142
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1141
    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 1145
    :cond_e
    return-void
.end method

.method private static checkOccurrenceRange(IIII)Z
    .locals 1
    .param p0, "min1"    # I
    .param p1, "max1"    # I
    .param p2, "min2"    # I
    .param p3, "max2"    # I

    .prologue
    const/4 v0, -0x1

    .line 1157
    if-lt p0, p2, :cond_1

    .line 1158
    if-eq p3, v0, :cond_0

    .line 1159
    if-eq p1, v0, :cond_1

    if-gt p1, p3, :cond_1

    .line 1160
    :cond_0
    const/4 v0, 0x1

    .line 1162
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 17
    .param p0, "dChildren"    # Ljava/util/Vector;
    .param p1, "min1"    # I
    .param p2, "max1"    # I
    .param p3, "dSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p4, "bChildren"    # Ljava/util/Vector;
    .param p5, "min2"    # I
    .param p6, "max2"    # I
    .param p7, "bSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 1256
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1257
    new-instance v13, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v14, "rcase-Recurse.1"

    const/4 v12, 0x4

    new-array v15, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 1258
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v12

    const/16 v16, 0x1

    .line 1259
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    const-string v12, "unbounded"

    :goto_0
    aput-object v12, v15, v16

    const/4 v12, 0x2

    .line 1260
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v12

    const/16 v16, 0x3

    .line 1261
    const/4 v12, -0x1

    move/from16 v0, p6

    if-ne v0, v12, :cond_1

    const-string v12, "unbounded"

    :goto_1
    aput-object v12, v15, v16

    .line 1257
    invoke-direct {v13, v14, v15}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v13

    .line 1259
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 1261
    :cond_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 1264
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1265
    .local v4, "count1":I
    invoke-virtual/range {p4 .. p4}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1267
    .local v5, "count2":I
    const/4 v6, 0x0

    .line 1268
    .local v6, "current":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-lt v8, v4, :cond_3

    .line 1287
    move v9, v6

    .local v9, "j":I
    :goto_3
    if-lt v9, v5, :cond_6

    .line 1294
    return-void

    .line 1270
    .end local v9    # "j":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1271
    .local v10, "particle1":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    move v9, v6

    .restart local v9    # "j":I
    :goto_4
    if-lt v9, v5, :cond_4

    .line 1283
    new-instance v12, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v13, "rcase-Recurse.2"

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v12

    .line 1272
    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1273
    .local v11, "particle2":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    add-int/lit8 v6, v6, 0x1

    .line 1275
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-static {v10, v0, v11, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1278
    :catch_0
    move-exception v7

    .line 1279
    .local v7, "e":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v12

    if-nez v12, :cond_5

    .line 1280
    new-instance v12, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v13, "rcase-Recurse.2"

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v12

    .line 1271
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1288
    .end local v7    # "e":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    .end local v10    # "particle1":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .end local v11    # "particle2":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_6
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1289
    .restart local v11    # "particle2":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v12

    if-nez v12, :cond_7

    .line 1290
    new-instance v12, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v13, "rcase-Recurse.2"

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v12

    .line 1287
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method private static checkRecurseLax(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 16
    .param p0, "dChildren"    # Ljava/util/Vector;
    .param p1, "min1"    # I
    .param p2, "max1"    # I
    .param p3, "dSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p4, "bChildren"    # Ljava/util/Vector;
    .param p5, "min2"    # I
    .param p6, "max2"    # I
    .param p7, "bSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 1355
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1356
    new-instance v12, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v13, "rcase-RecurseLax.1"

    const/4 v11, 0x4

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 1357
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v15, 0x1

    .line 1358
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    const-string v11, "unbounded"

    :goto_0
    aput-object v11, v14, v15

    const/4 v11, 0x2

    .line 1359
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v15, 0x3

    .line 1360
    const/4 v11, -0x1

    move/from16 v0, p6

    if-ne v0, v11, :cond_1

    const-string v11, "unbounded"

    :goto_1
    aput-object v11, v14, v15

    .line 1356
    invoke-direct {v12, v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v12

    .line 1358
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 1360
    :cond_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1363
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1364
    .local v4, "count1":I
    invoke-virtual/range {p4 .. p4}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1366
    .local v5, "count2":I
    const/4 v6, 0x0

    .line 1367
    .local v6, "current":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-lt v7, v4, :cond_3

    .line 1388
    return-void

    .line 1369
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1370
    .local v9, "particle1":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    move v8, v6

    .local v8, "j":I
    :goto_3
    if-lt v8, v5, :cond_4

    .line 1384
    new-instance v11, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v12, "rcase-RecurseLax.2"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v11

    .line 1371
    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1372
    .local v10, "particle2":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    add-int/lit8 v6, v6, 0x1

    .line 1376
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-static {v9, v0, v10, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_5

    .line 1377
    add-int/lit8 v6, v6, -0x1

    .line 1367
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1380
    :catch_0
    move-exception v11

    .line 1370
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method private static checkRecurseUnordered(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 16
    .param p0, "dChildren"    # Ljava/util/Vector;
    .param p1, "min1"    # I
    .param p2, "max1"    # I
    .param p3, "dSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p4, "bChildren"    # Ljava/util/Vector;
    .param p5, "min2"    # I
    .param p6, "max2"    # I
    .param p7, "bSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 1304
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1305
    new-instance v12, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v13, "rcase-RecurseUnordered.1"

    const/4 v11, 0x4

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 1306
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v15, 0x1

    .line 1307
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    const-string v11, "unbounded"

    :goto_0
    aput-object v11, v14, v15

    const/4 v11, 0x2

    .line 1308
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v15, 0x3

    .line 1309
    const/4 v11, -0x1

    move/from16 v0, p6

    if-ne v0, v11, :cond_1

    const-string v11, "unbounded"

    :goto_1
    aput-object v11, v14, v15

    .line 1305
    invoke-direct {v12, v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v12

    .line 1307
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 1309
    :cond_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1312
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1313
    .local v4, "count1":I
    invoke-virtual/range {p4 .. p4}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1315
    .local v5, "count2":I
    new-array v6, v5, [Z

    .line 1317
    .local v6, "foundIt":[Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-lt v7, v4, :cond_3

    .line 1339
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    if-lt v8, v5, :cond_6

    .line 1346
    return-void

    .line 1318
    .end local v8    # "j":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1320
    .local v9, "particle1":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_4
    if-lt v8, v5, :cond_4

    .line 1335
    new-instance v11, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v12, "rcase-RecurseUnordered.2"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v11

    .line 1321
    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1323
    .local v10, "particle2":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-static {v9, v0, v10, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    .line 1324
    aget-boolean v11, v6, v8

    if-eqz v11, :cond_5

    .line 1325
    new-instance v11, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v12, "rcase-RecurseUnordered.2"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v11

    .line 1331
    :catch_0
    move-exception v11

    .line 1320
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1327
    :cond_5
    const/4 v11, 0x1

    aput-boolean v11, v6, v8
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1340
    .end local v9    # "particle1":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .end local v10    # "particle2":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_6
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1341
    .restart local v10    # "particle2":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    aget-boolean v11, v6, v8

    if-nez v11, :cond_7

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v11

    if-nez v11, :cond_7

    .line 1342
    new-instance v11, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v12, "rcase-RecurseUnordered.2"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v11

    .line 1339
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method private static checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z
    .locals 9
    .param p0, "derived"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p1, "base"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p2, "block"    # S

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 186
    if-ne p0, p1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v4

    .line 191
    :cond_1
    and-int/lit8 v6, p2, 0x2

    if-nez v6, :cond_2

    .line 192
    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v6

    invoke-interface {v6}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getFinal()S

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    :cond_2
    move v4, v5

    .line 193
    goto :goto_0

    .line 198
    :cond_3
    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 199
    .local v0, "directBase":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    if-eq v0, p1, :cond_0

    .line 203
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v0, v6, :cond_4

    .line 204
    invoke-static {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v6

    if-nez v6, :cond_0

    .line 209
    :cond_4
    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    .line 210
    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v6

    if-ne v6, v8, :cond_6

    .line 211
    :cond_5
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p1, v6, :cond_0

    .line 216
    :cond_6
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v6

    if-ne v6, v8, :cond_7

    .line 217
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    .line 218
    .local v2, "subUnionMemberDV":Lmf/org/apache/xerces/xs/XSObjectList;
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    .line 219
    .local v3, "subUnionSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_8

    .end local v1    # "i":I
    .end local v2    # "subUnionMemberDV":Lmf/org/apache/xerces/xs/XSObjectList;
    .end local v3    # "subUnionSize":I
    :cond_7
    move v4, v5

    .line 226
    goto :goto_0

    .line 220
    .restart local v1    # "i":I
    .restart local v2    # "subUnionMemberDV":Lmf/org/apache/xerces/xs/XSObjectList;
    .restart local v3    # "subUnionSize":I
    :cond_8
    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object p1

    .end local p1    # "base":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    check-cast p1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 221
    .restart local p1    # "base":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v6

    if-nez v6, :cond_0

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static checkSimpleDerivationOk(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 3
    .param p0, "derived"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p1, "base"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "block"    # S

    .prologue
    const/4 v0, 0x0

    .line 150
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne p0, v1, :cond_2

    .line 151
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p1, v1, :cond_1

    .line 152
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p1, v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 156
    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 159
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v1, :cond_0

    .line 160
    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :cond_3
    move-object v0, p1

    .line 165
    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 164
    invoke-static {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 3
    .param p0, "derived"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p1, "base"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "block"    # S

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p0, v2, :cond_2

    .line 116
    if-ne p0, p1, :cond_1

    .line 139
    .end local p0    # "derived":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_0
    :goto_0
    return v0

    .restart local p0    # "derived":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_1
    move v0, v1

    .line 116
    goto :goto_0

    .line 119
    :cond_2
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne p0, v2, :cond_3

    .line 120
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p1, v2, :cond_0

    .line 121
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p1, v2, :cond_0

    move v0, v1

    .line 120
    goto :goto_0

    .line 125
    :cond_3
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    .line 127
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_4

    .line 130
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v0, :cond_5

    .line 131
    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 135
    :cond_4
    check-cast p0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .end local p0    # "derived":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    move-object v0, p1

    .line 136
    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 135
    invoke-static {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v0

    goto :goto_0

    .restart local p0    # "derived":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_5
    move v0, v1

    .line 133
    goto :goto_0

    .line 139
    :cond_6
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .end local p0    # "derived":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v0

    goto :goto_0
.end method

.method public static findElemInTable(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/util/SymbolHash;)V
    .locals 7
    .param p0, "type"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p1, "elem"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "elemDeclHash"    # Lmf/org/apache/xerces/util/SymbolHash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 573
    .local v0, "existingElem":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "existingElem":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .restart local v0    # "existingElem":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    if-nez v0, :cond_1

    .line 575
    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    :cond_0
    return-void

    .line 579
    :cond_1
    if-eq p1, v0, :cond_0

    .line 582
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eq v2, v3, :cond_0

    .line 584
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v3, "cos-element-consistent"

    .line 585
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 584
    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 34
    .param p0, "grammarBucket"    # Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;
    .param p1, "SGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p2, "cmBuilder"    # Lmf/org/apache/xerces/impl/xs/models/CMBuilder;
    .param p3, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .prologue
    .line 360
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v19

    .line 361
    .local v19, "grammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v20, v29, -0x1

    .local v20, "i":I
    :goto_0
    if-gez v20, :cond_0

    .line 365
    new-instance v15, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v15}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 366
    .local v15, "fakeDerived":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    new-instance v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v14}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 367
    .local v14, "fakeBase":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    const/16 v29, 0x3

    move/from16 v0, v29

    iput-short v0, v15, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 368
    const/16 v29, 0x3

    move/from16 v0, v29

    iput-short v0, v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 371
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v18, v29, -0x1

    .local v18, "g":I
    :goto_1
    if-gez v18, :cond_1

    .line 423
    new-instance v13, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v13}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    .line 424
    .local v13, "elemTable":Lmf/org/apache/xerces/util/SymbolHash;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v20, v29, -0x1

    :goto_2
    if-gez v20, :cond_6

    .line 527
    return-void

    .line 362
    .end local v13    # "elemTable":Lmf/org/apache/xerces/util/SymbolHash;
    .end local v14    # "fakeBase":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .end local v15    # "fakeDerived":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .end local v18    # "g":I
    :cond_0
    aget-object v29, v19, v20

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getSubstitutionGroups()[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->addSubstitutionGroup([Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 361
    add-int/lit8 v20, v20, -0x1

    goto :goto_0

    .line 372
    .restart local v14    # "fakeBase":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .restart local v15    # "fakeDerived":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .restart local v18    # "g":I
    :cond_1
    aget-object v29, v19, v18

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getRedefinedGroupDecls()[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v26

    .line 373
    .local v26, "redefinedGroups":[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    aget-object v29, v19, v18

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getRGLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v27

    .line 374
    .local v27, "rgLocators":[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    const/16 v20, 0x0

    :cond_2
    :goto_3
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-lt v0, v1, :cond_3

    .line 371
    add-int/lit8 v18, v18, -0x1

    goto :goto_1

    .line 375
    :cond_3
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "i":I
    .local v21, "i":I
    aget-object v9, v26, v20

    .line 376
    .local v9, "derivedGrp":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    iget-object v10, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 377
    .local v10, "derivedMG":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "i":I
    .restart local v20    # "i":I
    aget-object v4, v26, v21

    .line 378
    .local v4, "baseGrp":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 379
    .local v5, "baseMG":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    iput-object v10, v15, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 380
    iput-object v5, v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 381
    if-nez v5, :cond_4

    .line 382
    if-eqz v10, :cond_2

    .line 383
    div-int/lit8 v29, v20, 0x2

    add-int/lit8 v29, v29, -0x1

    aget-object v29, v27, v29

    .line 384
    const-string v30, "src-redefine.6.2.2"

    .line 385
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string v33, "rcase-Recurse.2"

    aput-object v33, v31, v32

    .line 383
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 387
    :cond_4
    if-nez v10, :cond_5

    .line 388
    invoke-virtual {v14}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v29

    if-nez v29, :cond_2

    .line 389
    div-int/lit8 v29, v20, 0x2

    add-int/lit8 v29, v29, -0x1

    aget-object v29, v27, v29

    .line 390
    const-string v30, "src-redefine.6.2.2"

    .line 391
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string v33, "rcase-Recurse.2"

    aput-object v33, v31, v32

    .line 389
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 395
    :cond_5
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p1

    invoke-static {v15, v0, v14, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 396
    :catch_0
    move-exception v12

    .line 397
    .local v12, "e":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v25

    .line 398
    .local v25, "key":Ljava/lang/String;
    div-int/lit8 v29, v20, 0x2

    add-int/lit8 v29, v29, -0x1

    aget-object v29, v27, v29

    .line 400
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v30

    .line 398
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    div-int/lit8 v29, v20, 0x2

    add-int/lit8 v29, v29, -0x1

    aget-object v29, v27, v29

    .line 402
    const-string v30, "src-redefine.6.2.2"

    .line 403
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v25, v31, v32

    .line 401
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 426
    .end local v4    # "baseGrp":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .end local v5    # "baseMG":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .end local v9    # "derivedGrp":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .end local v10    # "derivedMG":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .end local v12    # "e":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    .end local v25    # "key":Ljava/lang/String;
    .end local v26    # "redefinedGroups":[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .end local v27    # "rgLocators":[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .restart local v13    # "elemTable":Lmf/org/apache/xerces/util/SymbolHash;
    :cond_6
    const/16 v23, 0x0

    .line 427
    .local v23, "keepType":I
    aget-object v29, v19, v20

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    move/from16 v16, v0

    .line 428
    .local v16, "fullChecked":Z
    aget-object v29, v19, v20

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getUncheckedComplexTypeDecls()[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v28

    .line 429
    .local v28, "types":[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    aget-object v29, v19, v20

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getUncheckedCTLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v8

    .line 431
    .local v8, "ctLocators":[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_4
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v22

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    .line 522
    if-nez v16, :cond_7

    .line 523
    aget-object v29, v19, v20

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setUncheckedTypeNum(I)V

    .line 524
    aget-object v29, v19, v20

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    .line 424
    :cond_7
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_2

    .line 434
    :cond_8
    if-nez v16, :cond_9

    .line 436
    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    .line 437
    invoke-virtual {v13}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    .line 439
    :try_start_1
    aget-object v29, v28, v22

    aget-object v30, v28, v22

    move-object/from16 v0, v30

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-static {v0, v1, v13, v2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkElementDeclsConsistent(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_1 .. :try_end_1} :catch_1

    .line 452
    :cond_9
    :goto_5
    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    .line 453
    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v29, v0

    sget-object v30, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_a

    .line 454
    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    .line 455
    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    instance-of v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move/from16 v29, v0

    if-eqz v29, :cond_a

    .line 457
    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 459
    .local v11, "derivedParticle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v29, v0

    check-cast v29, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, v29

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 460
    .local v6, "baseParticle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    if-nez v11, :cond_d

    .line 461
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v29

    if-nez v29, :cond_a

    .line 462
    aget-object v29, v8, v22

    .line 463
    const-string v30, "derivation-ok-restriction.5.3.2"

    .line 464
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v33, v28, v22

    move-object/from16 v0, v33

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aget-object v33, v28, v22

    move-object/from16 v0, v33

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    .line 462
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    .end local v6    # "baseParticle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .end local v11    # "derivedParticle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_a
    :goto_6
    aget-object v29, v28, v22

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v7

    .line 491
    .local v7, "cm":Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    const/16 v17, 0x0

    .line 492
    .local v17, "further":Z
    if-eqz v7, :cond_b

    .line 494
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v17

    .line 511
    :cond_b
    :goto_7
    if-nez v16, :cond_c

    if-eqz v17, :cond_c

    .line 512
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "keepType":I
    .local v24, "keepType":I
    aget-object v29, v28, v22

    aput-object v29, v28, v23

    move/from16 v23, v24

    .line 431
    .end local v24    # "keepType":I
    .restart local v23    # "keepType":I
    :cond_c
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 442
    .end local v7    # "cm":Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .end local v17    # "further":Z
    :catch_1
    move-exception v12

    .line 443
    .restart local v12    # "e":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    aget-object v29, v8, v22

    .line 444
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v30

    .line 445
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v31

    .line 443
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 467
    .end local v12    # "e":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    .restart local v6    # "baseParticle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .restart local v11    # "derivedParticle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_d
    if-eqz v6, :cond_e

    .line 469
    :try_start_3
    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v30, v0

    .line 471
    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v29, v0

    check-cast v29, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v29, v0

    .line 469
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 473
    :catch_2
    move-exception v12

    .line 474
    .restart local v12    # "e":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    aget-object v29, v8, v22

    .line 475
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v30

    .line 476
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v31

    .line 474
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    aget-object v29, v8, v22

    .line 478
    const-string v30, "derivation-ok-restriction.5.4.2"

    .line 479
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v33, v28, v22

    move-object/from16 v0, v33

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    .line 477
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 483
    .end local v12    # "e":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    :cond_e
    aget-object v29, v8, v22

    .line 484
    const-string v30, "derivation-ok-restriction.5.4.2"

    .line 485
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v33, v28, v22

    move-object/from16 v0, v33

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    .line 483
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 495
    .end local v6    # "baseParticle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .end local v11    # "derivedParticle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .restart local v7    # "cm":Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .restart local v17    # "further":Z
    :catch_3
    move-exception v12

    .line 496
    .restart local v12    # "e":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    aget-object v29, v8, v22

    .line 497
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v30

    .line 498
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v31

    .line 496
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7
.end method

.method private static gatherChildren(ILmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/util/Vector;)V
    .locals 7
    .param p0, "parentType"    # I
    .param p1, "p"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p2, "children"    # Ljava/util/Vector;

    .prologue
    const/4 v6, 0x1

    .line 1031
    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 1032
    .local v3, "min":I
    iget v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 1033
    .local v2, "max":I
    iget-short v4, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 1034
    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1035
    iget-object v5, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v4, v5, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 1037
    :cond_0
    if-eq v4, v6, :cond_1

    .line 1038
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1039
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1055
    :cond_2
    :goto_0
    return-void

    .line 1043
    :cond_3
    if-ne v3, v6, :cond_4

    if-eq v2, v6, :cond_5

    .line 1044
    :cond_4
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1046
    :cond_5
    if-ne p0, v4, :cond_6

    .line 1047
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 1048
    .local v0, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v1, v5, :cond_2

    .line 1049
    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v5, v5, v1

    invoke-static {v4, v5, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->gatherChildren(ILmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/util/Vector;)V

    .line 1048
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1051
    .end local v0    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1052
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getEmptySequence()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 3

    .prologue
    .line 60
    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v2, :cond_0

    .line 61
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    .line 62
    .local v0, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    const/16 v2, 0x66

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 63
    const/4 v2, 0x0

    iput v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 64
    const/4 v2, 0x0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 65
    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 66
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 67
    .local v1, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    const/4 v2, 0x3

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 68
    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 69
    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 70
    sput-object v1, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 72
    :cond_0
    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    return-object v2
.end method

.method private static getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 3
    .param p0, "p"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .prologue
    const/4 v2, 0x1

    .line 1002
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-eq v0, v2, :cond_0

    .line 1003
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1010
    .end local p0    # "p":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_0
    :goto_0
    return-object p0

    .line 1006
    .restart local p0    # "p":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-ne v0, v2, :cond_0

    .line 1007
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ne v0, v2, :cond_0

    .line 1008
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object p0

    goto :goto_0
.end method

.method public static overlapUPA(Ljava/lang/Object;Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 1
    .param p0, "decl1"    # Ljava/lang/Object;
    .param p1, "decl2"    # Ljava/lang/Object;
    .param p2, "sgHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .prologue
    .line 1506
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_1

    .line 1507
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_0

    .line 1508
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1509
    .end local p0    # "decl1":Ljava/lang/Object;
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1508
    .end local p1    # "decl2":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v0

    .line 1525
    :goto_0
    return v0

    .line 1513
    .restart local p0    # "decl1":Ljava/lang/Object;
    .restart local p1    # "decl2":Ljava/lang/Object;
    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1514
    .end local p0    # "decl1":Ljava/lang/Object;
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1513
    .end local p1    # "decl2":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v0

    goto :goto_0

    .line 1519
    .restart local p0    # "decl1":Ljava/lang/Object;
    .restart local p1    # "decl2":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_2

    .line 1520
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1521
    .end local p1    # "decl2":Ljava/lang/Object;
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1520
    .end local p0    # "decl1":Ljava/lang/Object;
    invoke-static {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v0

    goto :goto_0

    .line 1525
    .restart local p0    # "decl1":Ljava/lang/Object;
    .restart local p1    # "decl2":Ljava/lang/Object;
    :cond_2
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1526
    .end local p0    # "decl1":Ljava/lang/Object;
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1525
    .end local p1    # "decl2":Ljava/lang/Object;
    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    goto :goto_0
.end method

.method public static overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 5
    .param p0, "element1"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p1, "element2"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "sgHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .prologue
    const/4 v2, 0x1

    .line 1443
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    .line 1444
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    .line 1468
    :cond_0
    :goto_0
    return v2

    .line 1450
    :cond_1
    invoke-virtual {p2, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    .line 1451
    .local v1, "subGroup":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_2

    .line 1460
    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    .line 1461
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-gez v0, :cond_4

    .line 1468
    const/4 v2, 0x0

    goto :goto_0

    .line 1452
    :cond_2
    aget-object v3, v1, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    .line 1453
    aget-object v3, v1, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    .line 1451
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1462
    :cond_4
    aget-object v3, v1, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v3, v4, :cond_5

    .line 1463
    aget-object v3, v1, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    .line 1461
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public static overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 4
    .param p0, "element"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p1, "wildcard"    # Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .param p2, "sgHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .prologue
    const/4 v2, 0x1

    .line 1477
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1487
    :cond_0
    :goto_0
    return v2

    .line 1481
    :cond_1
    invoke-virtual {p2, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    .line 1482
    .local v1, "subGroup":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_2

    .line 1487
    const/4 v2, 0x0

    goto :goto_0

    .line 1483
    :cond_2
    aget-object v3, v1, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1482
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static overlapUPA(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 3
    .param p0, "wildcard1"    # Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .param p1, "wildcard2"    # Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .prologue
    .line 1493
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v0

    .line 1494
    .local v0, "intersect":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    if-eqz v0, :cond_0

    .line 1495
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1496
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 1497
    :cond_0
    const/4 v1, 0x1

    .line 1500
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 1
    .param p0, "dParticle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p1, "dSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p2, "bParticle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p3, "bSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 603
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Z)Z

    move-result v0

    return v0
.end method

.method private static particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Z)Z
    .locals 36
    .param p0, "dParticle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p1, "dSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p2, "bParticle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .param p3, "bSGHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .param p4, "checkWCOccurrence"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 613
    const/4 v8, 0x0

    .line 614
    .local v8, "dChildren":Ljava/util/Vector;
    const/4 v12, 0x0

    .line 615
    .local v12, "bChildren":Ljava/util/Vector;
    const/4 v14, -0x2

    .line 616
    .local v14, "dMinEffectiveTotalRange":I
    const/4 v15, -0x2

    .line 619
    .local v15, "dMaxEffectiveTotalRange":I
    const/16 v25, 0x0

    .line 623
    .local v25, "bExpansionHappened":Z
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 624
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "cos-particle-restrict.a"

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 626
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "cos-particle-restrict.b"

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 638
    :cond_1
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move/from16 v32, v0

    .line 642
    .local v32, "dType":S
    const/4 v2, 0x3

    move/from16 v0, v32

    if-ne v0, v2, :cond_3

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move/from16 v32, v0

    .line 648
    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v33

    .line 649
    .local v33, "dtmp":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2

    .line 651
    move-object/from16 p0, v33

    .line 652
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move/from16 v32, v0

    .line 653
    const/4 v2, 0x3

    move/from16 v0, v32

    if-ne v0, v2, :cond_2

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move/from16 v32, v0

    .line 659
    :cond_2
    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->removePointlessChildren(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Ljava/util/Vector;

    move-result-object v8

    .line 662
    .end local v33    # "dtmp":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 663
    .local v3, "dMinOccurs":I
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 668
    .local v4, "dMaxOccurs":I
    if-eqz p1, :cond_10

    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_10

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object/from16 v29, v0

    check-cast v29, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 671
    .local v29, "dElement":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    move-object/from16 v0, v29

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    const/4 v5, 0x1

    if-ne v2, v5, :cond_10

    .line 675
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v35

    .line 676
    .local v35, "subGroup":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    move-object/from16 v0, v35

    array-length v2, v0

    if-lez v2, :cond_10

    .line 679
    const/16 v32, 0x65

    .line 680
    move v14, v3

    .line 681
    move v15, v4

    .line 684
    new-instance v8, Ljava/util/Vector;

    .end local v8    # "dChildren":Ljava/util/Vector;
    move-object/from16 v0, v35

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/Vector;-><init>(I)V

    .line 685
    .restart local v8    # "dChildren":Ljava/util/Vector;
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_0
    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v34

    if-lt v0, v2, :cond_7

    .line 688
    move-object/from16 v0, v29

    invoke-static {v8, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 689
    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 693
    const/16 p1, 0x0

    move/from16 v30, v15

    .end local v15    # "dMaxEffectiveTotalRange":I
    .local v30, "dMaxEffectiveTotalRange":I
    move/from16 v31, v14

    .end local v14    # "dMinEffectiveTotalRange":I
    .local v31, "dMinEffectiveTotalRange":I
    move-object v13, v8

    .line 698
    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v29    # "dElement":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .end local v34    # "i":I
    .end local v35    # "subGroup":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .local v13, "dChildren":Ljava/util/Vector;
    :goto_1
    move-object/from16 v0, p2

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move/from16 v26, v0

    .line 702
    .local v26, "bType":S
    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_5

    .line 703
    move-object/from16 v0, p2

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move/from16 v26, v0

    .line 708
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v28

    .line 709
    .local v28, "btmp":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_4

    .line 711
    move-object/from16 p2, v28

    .line 712
    move-object/from16 v0, p2

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move/from16 v26, v0

    .line 713
    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_4

    .line 714
    move-object/from16 v0, p2

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move/from16 v26, v0

    .line 719
    :cond_4
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->removePointlessChildren(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Ljava/util/Vector;

    move-result-object v12

    .line 722
    .end local v28    # "btmp":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_5
    move-object/from16 v0, p2

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 723
    .local v6, "bMinOccurs":I
    move-object/from16 v0, p2

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 725
    .local v7, "bMaxOccurs":I
    if-eqz p3, :cond_6

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_6

    .line 726
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object/from16 v24, v0

    check-cast v24, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 728
    .local v24, "bElement":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    move-object/from16 v0, v24

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    .line 732
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v27

    .line 733
    .local v27, "bsubGroup":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    move-object/from16 v0, v27

    array-length v2, v0

    if-lez v2, :cond_6

    .line 735
    const/16 v26, 0x65

    .line 737
    new-instance v12, Ljava/util/Vector;

    .end local v12    # "bChildren":Ljava/util/Vector;
    move-object/from16 v0, v27

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v12, v2}, Ljava/util/Vector;-><init>(I)V

    .line 738
    .restart local v12    # "bChildren":Ljava/util/Vector;
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_2
    move-object/from16 v0, v27

    array-length v2, v0

    move/from16 v0, v34

    if-lt v0, v2, :cond_8

    .line 741
    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 742
    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 745
    const/16 p3, 0x0

    .line 748
    const/16 v25, 0x1

    .line 756
    .end local v24    # "bElement":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .end local v27    # "bsubGroup":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .end local v34    # "i":I
    :cond_6
    sparse-switch v32, :sswitch_data_0

    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    move/from16 v14, v31

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    move-object v8, v13

    .line 988
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    :goto_3
    return v25

    .line 686
    .end local v6    # "bMinOccurs":I
    .end local v7    # "bMaxOccurs":I
    .end local v26    # "bType":S
    .restart local v29    # "dElement":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .restart local v34    # "i":I
    .restart local v35    # "subGroup":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :cond_7
    aget-object v2, v35, v34

    invoke-static {v8, v2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 685
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_0

    .line 739
    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .end local v29    # "dElement":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .end local v35    # "subGroup":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .restart local v6    # "bMinOccurs":I
    .restart local v7    # "bMaxOccurs":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v24    # "bElement":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .restart local v26    # "bType":S
    .restart local v27    # "bsubGroup":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :cond_8
    aget-object v2, v27, v34

    invoke-static {v12, v2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 738
    add-int/lit8 v34, v34, 0x1

    goto :goto_2

    .line 759
    .end local v24    # "bElement":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .end local v27    # "bsubGroup":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .end local v34    # "i":I
    :sswitch_0
    sparse-switch v26, :sswitch_data_1

    .line 805
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "Internal-Error"

    .line 806
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "in particleValidRestriction"

    aput-object v11, v9, v10

    .line 805
    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 764
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 765
    move-object/from16 v0, p2

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 764
    invoke-static/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNameAndTypeOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSElementDecl;II)V

    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    move/from16 v14, v31

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    move-object v8, v13

    .line 766
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    goto :goto_3

    .line 772
    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 773
    move-object/from16 v0, p2

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move/from16 v8, p4

    .line 772
    invoke-static/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSCompat(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;IIZ)V

    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    move/from16 v14, v31

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    move-object v8, v13

    .line 775
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    goto :goto_3

    .line 783
    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :sswitch_3
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 784
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 786
    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v11, p1

    move v13, v6

    move v14, v7

    move-object/from16 v15, p3

    invoke-static/range {v8 .. v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurseLax(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    move/from16 v14, v31

    .line 788
    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    goto :goto_3

    .line 795
    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :sswitch_4
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 796
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 798
    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v11, p1

    move v13, v6

    move v14, v7

    move-object/from16 v15, p3

    invoke-static/range {v8 .. v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    move/from16 v14, v31

    .line 800
    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    goto/16 :goto_3

    .line 813
    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :sswitch_5
    sparse-switch v26, :sswitch_data_2

    .line 834
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "Internal-Error"

    .line 835
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "in particleValidRestriction"

    aput-object v11, v9, v10

    .line 834
    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 818
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 819
    move-object/from16 v0, p2

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 818
    invoke-static/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSSubset(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;II)V

    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    move/from16 v14, v31

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    move-object v8, v13

    .line 820
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    goto/16 :goto_3

    .line 828
    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :sswitch_7
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "cos-particle-restrict.2"

    .line 829
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "any:choice,sequence,all,elt"

    aput-object v11, v9, v10

    .line 828
    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 842
    :sswitch_8
    sparse-switch v26, :sswitch_data_3

    .line 878
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "Internal-Error"

    .line 879
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "in particleValidRestriction"

    aput-object v11, v9, v10

    .line 878
    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 847
    :sswitch_9
    const/4 v2, -0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_f

    .line 848
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v14

    .line 849
    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    :goto_4
    const/4 v2, -0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_e

    .line 850
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v15

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    :goto_5
    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, p4

    .line 852
    invoke-static/range {v13 .. v20}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V

    move-object v8, v13

    .line 858
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    goto/16 :goto_3

    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :sswitch_a
    move-object/from16 v16, v13

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, p1

    move-object/from16 v20, v12

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, p3

    .line 863
    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    move/from16 v14, v31

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    move-object v8, v13

    .line 865
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    goto/16 :goto_3

    .line 872
    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :sswitch_b
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "cos-particle-restrict.2"

    .line 873
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "all:choice,sequence,elt"

    aput-object v11, v9, v10

    .line 872
    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 886
    :sswitch_c
    sparse-switch v26, :sswitch_data_4

    .line 921
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "Internal-Error"

    .line 922
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "in particleValidRestriction"

    aput-object v11, v9, v10

    .line 921
    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 891
    :sswitch_d
    const/4 v2, -0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_d

    .line 892
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v14

    .line 893
    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    :goto_6
    const/4 v2, -0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_c

    .line 894
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v15

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    :goto_7
    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, p4

    .line 896
    invoke-static/range {v13 .. v20}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V

    move-object v8, v13

    .line 901
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    goto/16 :goto_3

    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :sswitch_e
    move-object/from16 v16, v13

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, p1

    move-object/from16 v20, v12

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, p3

    .line 906
    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurseLax(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    move/from16 v14, v31

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    move-object v8, v13

    .line 908
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    goto/16 :goto_3

    .line 915
    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :sswitch_f
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "cos-particle-restrict.2"

    .line 916
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "choice:all,sequence,elt"

    aput-object v11, v9, v10

    .line 915
    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 930
    :sswitch_10
    sparse-switch v26, :sswitch_data_5

    .line 980
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "Internal-Error"

    .line 981
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "in particleValidRestriction"

    aput-object v11, v9, v10

    .line 980
    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 935
    :sswitch_11
    const/4 v2, -0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_b

    .line 936
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v14

    .line 937
    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    :goto_8
    const/4 v2, -0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_a

    .line 938
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v15

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    :goto_9
    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, p4

    .line 940
    invoke-static/range {v13 .. v20}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V

    move-object v8, v13

    .line 945
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    goto/16 :goto_3

    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :sswitch_12
    move-object/from16 v16, v13

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, p1

    move-object/from16 v20, v12

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, p3

    .line 950
    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurseUnordered(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    move/from16 v14, v31

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    move-object v8, v13

    .line 952
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    goto/16 :goto_3

    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :sswitch_13
    move-object/from16 v16, v13

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, p1

    move-object/from16 v20, v12

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, p3

    .line 957
    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    move/from16 v14, v31

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    move-object v8, v13

    .line 959
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    goto/16 :goto_3

    .line 964
    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :sswitch_14
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v2

    mul-int v17, v3, v2

    .line 965
    .local v17, "min1":I
    const/4 v2, -0x1

    if-ne v4, v2, :cond_9

    move/from16 v18, v4

    .local v18, "max1":I
    :goto_a
    move-object/from16 v16, v13

    move-object/from16 v19, p1

    move-object/from16 v20, v12

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, p3

    .line 967
    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkMapAndSum(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    move/from16 v14, v31

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    move-object v8, v13

    .line 969
    .end local v13    # "dChildren":Ljava/util/Vector;
    .restart local v8    # "dChildren":Ljava/util/Vector;
    goto/16 :goto_3

    .line 966
    .end local v8    # "dChildren":Ljava/util/Vector;
    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .end local v18    # "max1":I
    .restart local v13    # "dChildren":Ljava/util/Vector;
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :cond_9
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v2

    mul-int v18, v4, v2

    goto :goto_a

    .line 974
    .end local v17    # "min1":I
    :sswitch_15
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "cos-particle-restrict.2"

    .line 975
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "seq:elt"

    aput-object v11, v9, v10

    .line 974
    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    :cond_a
    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    goto :goto_9

    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :cond_b
    move/from16 v14, v31

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    goto/16 :goto_8

    :cond_c
    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    goto/16 :goto_7

    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :cond_d
    move/from16 v14, v31

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    goto/16 :goto_6

    :cond_e
    move/from16 v15, v30

    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v15    # "dMaxEffectiveTotalRange":I
    goto/16 :goto_5

    .end local v14    # "dMinEffectiveTotalRange":I
    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v30    # "dMaxEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    :cond_f
    move/from16 v14, v31

    .end local v31    # "dMinEffectiveTotalRange":I
    .restart local v14    # "dMinEffectiveTotalRange":I
    goto/16 :goto_4

    .end local v6    # "bMinOccurs":I
    .end local v7    # "bMaxOccurs":I
    .end local v13    # "dChildren":Ljava/util/Vector;
    .end local v26    # "bType":S
    .end local v30    # "dMaxEffectiveTotalRange":I
    .restart local v8    # "dChildren":Ljava/util/Vector;
    .restart local v15    # "dMaxEffectiveTotalRange":I
    :cond_10
    move/from16 v30, v15

    .end local v15    # "dMaxEffectiveTotalRange":I
    .restart local v30    # "dMaxEffectiveTotalRange":I
    move/from16 v31, v14

    .end local v14    # "dMinEffectiveTotalRange":I
    .restart local v31    # "dMinEffectiveTotalRange":I
    move-object v13, v8

    .end local v8    # "dChildren":Ljava/util/Vector;
    .restart local v13    # "dChildren":Ljava/util/Vector;
    goto/16 :goto_1

    .line 756
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x65 -> :sswitch_c
        0x66 -> :sswitch_10
        0x67 -> :sswitch_8
    .end sparse-switch

    .line 759
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
    .end sparse-switch

    .line 813
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x67 -> :sswitch_7
    .end sparse-switch

    .line 842
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_9
        0x65 -> :sswitch_b
        0x66 -> :sswitch_b
        0x67 -> :sswitch_a
    .end sparse-switch

    .line 886
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
        0x67 -> :sswitch_f
    .end sparse-switch

    .line 930
    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_11
        0x65 -> :sswitch_14
        0x66 -> :sswitch_13
        0x67 -> :sswitch_12
    .end sparse-switch
.end method

.method private static removePointlessChildren(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Ljava/util/Vector;
    .locals 5
    .param p0, "p"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .prologue
    .line 1015
    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1016
    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1017
    :cond_0
    const/4 v0, 0x0

    .line 1025
    :cond_1
    return-object v0

    .line 1019
    :cond_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1021
    .local v0, "children":Ljava/util/Vector;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 1022
    .local v1, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v2, v3, :cond_1

    .line 1023
    iget-short v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iget-object v4, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v4, v4, v2

    invoke-static {v3, v4, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->gatherChildren(ILmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/util/Vector;)V

    .line 1022
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .param p1, "loc"    # Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 338
    if-eqz p1, :cond_0

    .line 339
    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 346
    :goto_0
    return-void

    .line 343
    :cond_0
    const-string v0, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {p0, v0, p2, p3, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0
.end method
