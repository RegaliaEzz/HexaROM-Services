.class public Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
.super Ljava/lang/Object;
.source "SubstitutionGroupHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;
    }
.end annotation


# static fields
.field private static final EMPTY_GROUP:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private static final EMPTY_VECTOR:[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;


# instance fields
.field fSubGroups:Ljava/util/Hashtable;

.field fSubGroupsB:Ljava/util/Hashtable;

.field private final fXSElementDeclHelper:Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->EMPTY_GROUP:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 182
    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->EMPTY_VECTOR:[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V
    .locals 1
    .param p1, "elementDeclHelper"    # Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    .line 184
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    .line 50
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fXSElementDeclHelper:Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;

    .line 51
    return-void
.end method

.method private getDBMethods(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;)Z
    .locals 4
    .param p1, "typed"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "typeb"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p3, "methods"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    .prologue
    const/16 v3, 0xf

    .line 313
    const/4 v1, 0x0

    .local v1, "dMethod":S
    const/4 v0, 0x0

    .line 314
    .local v0, "bMethod":S
    :cond_0
    :goto_0
    if-eq p1, p2, :cond_1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v2, :cond_3

    .line 328
    :cond_1
    if-ne p1, p2, :cond_2

    and-int v2, v1, v0

    if-eqz v2, :cond_6

    .line 329
    :cond_2
    const/4 v2, 0x0

    .line 334
    :goto_1
    return v2

    .line 315
    :cond_3
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    if-ne v2, v3, :cond_5

    move-object v2, p1

    .line 316
    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    or-int/2addr v2, v1

    int-to-short v1, v2

    .line 319
    :goto_2
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    .line 322
    if-nez p1, :cond_4

    .line 323
    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 324
    :cond_4
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    if-ne v2, v3, :cond_0

    move-object v2, p1

    .line 325
    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    or-int/2addr v2, v0

    int-to-short v0, v2

    goto :goto_0

    .line 318
    :cond_5
    or-int/lit8 v2, v1, 0x2

    int-to-short v1, v2

    goto :goto_2

    .line 332
    :cond_6
    iput-short v1, p3, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    .line 333
    iput-short v0, p3, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    .line 334
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private getSubGroupB(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;)[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;
    .locals 17
    .param p1, "element"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "methods"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 263
    .local v13, "subGroup":Ljava/lang/Object;
    if-nez v13, :cond_0

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->EMPTY_VECTOR:[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v13, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->EMPTY_VECTOR:[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    .line 308
    .end local v13    # "subGroup":Ljava/lang/Object;
    :goto_0
    return-object v13

    .line 269
    .restart local v13    # "subGroup":Ljava/lang/Object;
    :cond_0
    instance-of v14, v13, [Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    if-eqz v14, :cond_1

    .line 270
    check-cast v13, [Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    goto :goto_0

    :cond_1
    move-object v6, v13

    .line 273
    check-cast v6, Ljava/util/Vector;

    .local v6, "group":Ljava/util/Vector;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 278
    .local v10, "newGroup":Ljava/util/Vector;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .local v8, "i":I
    :goto_1
    if-gez v8, :cond_2

    .line 301
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v14

    new-array v11, v14, [Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    .line 302
    .local v11, "ret":[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    :goto_2
    if-gez v8, :cond_6

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v11

    .line 308
    goto :goto_0

    .line 280
    .end local v11    # "ret":[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;
    :cond_2
    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 281
    .local v12, "sub":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    iget-object v14, v12, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p1

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getDBMethods(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 278
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 284
    :cond_4
    move-object/from16 v0, p2

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    .line 285
    .local v4, "dMethod":S
    move-object/from16 v0, p2

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    .line 287
    .local v2, "bMethod":S
    new-instance v14, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    move-object/from16 v0, p2

    iget-short v15, v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    move-object/from16 v0, p2

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v14, v12, v15, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDecl;SS)V

    invoke-virtual {v10, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v12, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubGroupB(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;)[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    move-result-object v7

    .line 290
    .local v7, "group1":[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;
    array-length v14, v7

    add-int/lit8 v9, v14, -0x1

    .local v9, "j":I
    :goto_3
    if-ltz v9, :cond_3

    .line 292
    aget-object v14, v7, v9

    iget-short v14, v14, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    or-int/2addr v14, v4

    int-to-short v5, v14

    .line 293
    .local v5, "dSubMethod":S
    aget-object v14, v7, v9

    iget-short v14, v14, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    or-int/2addr v14, v2

    int-to-short v3, v14

    .line 295
    .local v3, "bSubMethod":S
    and-int v14, v5, v3

    if-eqz v14, :cond_5

    .line 290
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 297
    :cond_5
    new-instance v14, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    aget-object v15, v7, v9

    iget-object v15, v15, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->sub:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct {v14, v15, v5, v3}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDecl;SS)V

    invoke-virtual {v10, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 303
    .end local v2    # "bMethod":S
    .end local v3    # "bSubMethod":S
    .end local v4    # "dMethod":S
    .end local v5    # "dSubMethod":S
    .end local v7    # "group1":[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;
    .end local v9    # "j":I
    .end local v12    # "sub":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .restart local v11    # "ret":[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;
    :cond_6
    invoke-virtual {v10, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    aput-object v14, v11, v8

    .line 302
    add-int/lit8 v8, v8, -0x1

    goto :goto_2
.end method

.method private typeDerivationOK(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 11
    .param p1, "derived"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "base"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p3, "blockingConstraint"    # S

    .prologue
    const/16 v10, 0xf

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 119
    const/4 v1, 0x0

    .local v1, "devMethod":S
    move v0, p3

    .line 124
    .local v0, "blockConstraint":S
    move-object v6, p1

    .line 125
    .local v6, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_0
    :goto_0
    if-eq v6, p2, :cond_1

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne v6, v7, :cond_3

    .line 142
    :cond_1
    if-eq v6, p2, :cond_8

    .line 144
    invoke-interface {p2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v7

    const/16 v10, 0x10

    if-ne v7, v10, :cond_2

    move-object v5, p2

    .line 145
    check-cast v5, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    .line 146
    .local v5, "st":Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v7

    const/4 v10, 0x3

    if-ne v7, v10, :cond_2

    .line 147
    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v4

    .line 148
    .local v4, "memberTypes":Lmf/org/apache/xerces/xs/XSObjectList;
    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    .line 149
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_6

    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "memberTypes":Lmf/org/apache/xerces/xs/XSObjectList;
    .end local v5    # "st":Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    :cond_2
    move v7, v9

    .line 161
    :goto_2
    return v7

    .line 126
    :cond_3
    invoke-interface {v6}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v7

    if-ne v7, v10, :cond_5

    move-object v7, v6

    .line 127
    check-cast v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v7, v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    or-int/2addr v7, v1

    int-to-short v1, v7

    .line 132
    :goto_3
    invoke-interface {v6}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v6

    .line 135
    if-nez v6, :cond_4

    .line 136
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 138
    :cond_4
    invoke-interface {v6}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v7

    if-ne v7, v10, :cond_0

    move-object v7, v6

    .line 139
    check-cast v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v7, v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    or-int/2addr v7, v0

    int-to-short v0, v7

    goto :goto_0

    .line 130
    :cond_5
    or-int/lit8 v7, v1, 0x2

    int-to-short v1, v7

    goto :goto_3

    .line 150
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    .restart local v4    # "memberTypes":Lmf/org/apache/xerces/xs/XSObjectList;
    .restart local v5    # "st":Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    :cond_6
    invoke-interface {v4, v2}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-direct {p0, p1, v7, p3}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->typeDerivationOK(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    .line 151
    goto :goto_2

    .line 149
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "memberTypes":Lmf/org/apache/xerces/xs/XSObjectList;
    .end local v5    # "st":Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    :cond_8
    and-int v7, v1, v0

    if-eqz v7, :cond_9

    move v7, v9

    .line 159
    goto :goto_2

    :cond_9
    move v7, v8

    .line 161
    goto :goto_2
.end method


# virtual methods
.method public addSubstitutionGroup([Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 5
    .param p1, "elements"    # [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    .line 201
    array-length v4, p1

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 214
    return-void

    .line 202
    :cond_0
    aget-object v0, p1, v1

    .line 203
    .local v0, "element":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 205
    .local v3, "subHead":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 206
    .local v2, "subGroup":Ljava/util/Vector;
    if-nez v2, :cond_1

    .line 208
    new-instance v2, Ljava/util/Vector;

    .end local v2    # "subGroup":Ljava/util/Vector;
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 209
    .restart local v2    # "subGroup":Ljava/util/Vector;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 201
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 4
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "exemplar"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v3, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 57
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 83
    .end local p2    # "exemplar":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :goto_0
    return-object p2

    .line 63
    .restart local p2    # "exemplar":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :cond_0
    iget-short v2, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    move-object p2, v1

    .line 64
    goto :goto_0

    .line 68
    :cond_1
    iget-short v2, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    move-object p2, v1

    .line 69
    goto :goto_0

    .line 73
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fXSElementDeclHelper:Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;

    invoke-interface {v2, p1}, Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;->getGlobalElementDecl(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    .line 74
    .local v0, "eDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    if-nez v0, :cond_3

    move-object p2, v1

    .line 75
    goto :goto_0

    .line 79
    :cond_3
    iget-short v2, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    invoke-virtual {p0, v0, p2, v2}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->substitutionGroupOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;S)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object p2, v0

    .line 80
    goto :goto_0

    :cond_4
    move-object p2, v1

    .line 83
    goto :goto_0
.end method

.method public getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 11
    .param p1, "element"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    const/4 v10, 0x0

    .line 226
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    invoke-virtual {v8, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 227
    .local v7, "subGroup":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 228
    check-cast v7, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 255
    .end local v7    # "subGroup":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 230
    .restart local v7    # "subGroup":Ljava/lang/Object;
    :cond_0
    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_1

    .line 231
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->EMPTY_GROUP:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v8, p1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->EMPTY_GROUP:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0

    .line 237
    :cond_1
    new-instance v8, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    invoke-direct {v8}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;-><init>()V

    invoke-direct {p0, p1, v8}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubGroupB(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;)[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    move-result-object v0

    .line 238
    .local v0, "groupB":[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;
    array-length v2, v0

    .local v2, "len":I
    const/4 v5, 0x0

    .line 239
    .local v5, "rlen":I
    new-array v3, v2, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 242
    .local v3, "ret":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    const/4 v1, 0x0

    .local v1, "i":I
    move v6, v5

    .end local v5    # "rlen":I
    .local v6, "rlen":I
    :goto_1
    if-lt v1, v2, :cond_3

    .line 247
    if-ge v6, v2, :cond_2

    .line 248
    new-array v4, v6, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 249
    .local v4, "ret1":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    invoke-static {v3, v10, v4, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    move-object v3, v4

    .line 253
    .end local v4    # "ret1":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :cond_2
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    invoke-virtual {v8, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v3

    .line 255
    goto :goto_0

    .line 243
    :cond_3
    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    aget-object v9, v0, v1

    iget-short v9, v9, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    and-int/2addr v8, v9

    if-nez v8, :cond_4

    .line 244
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "rlen":I
    .restart local v5    # "rlen":I
    aget-object v8, v0, v1

    iget-object v8, v8, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->sub:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aput-object v8, v3, v6

    .line 242
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5    # "rlen":I
    .restart local v6    # "rlen":I
    goto :goto_1

    :cond_4
    move v5, v6

    .end local v6    # "rlen":I
    .restart local v5    # "rlen":I
    goto :goto_2
.end method

.method public inSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Z
    .locals 1
    .param p1, "element"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "exemplar"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    .line 173
    iget-short v0, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->substitutionGroupOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;S)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 191
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 192
    return-void
.end method

.method protected substitutionGroupOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;S)Z
    .locals 3
    .param p1, "element"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "exemplar"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p3, "blockingConstraint"    # S

    .prologue
    const/4 v1, 0x0

    .line 91
    if-ne p1, p2, :cond_1

    .line 92
    const/4 v1, 0x1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_0

    .line 102
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 103
    .local v0, "subGroup":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :goto_1
    if-eqz v0, :cond_2

    if-ne v0, p2, :cond_3

    .line 107
    :cond_2
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v2, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-direct {p0, v1, v2, p3}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->typeDerivationOK(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v1

    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_1
.end method
