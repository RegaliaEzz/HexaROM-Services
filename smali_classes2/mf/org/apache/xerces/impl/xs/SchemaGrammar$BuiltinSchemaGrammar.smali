.class public Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;
.super Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.source "SchemaGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuiltinSchemaGrammar"
.end annotation


# static fields
.field private static final EXTENDED_SCHEMA_FACTORY_CLASS:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.xs.ExtendedSchemaDVFactoryImpl"


# direct methods
.method public constructor <init>(IS)V
    .locals 15
    .param p1, "grammar"    # I
    .param p2, "schemaVersion"    # S

    .prologue
    .line 275
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>()V

    .line 277
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 278
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-result-object v1

    .line 284
    .local v1, "schemaFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    :goto_0
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 286
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    .line 289
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 290
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v3, 0x3

    iput-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 291
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    .line 294
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 295
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 296
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 297
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 298
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 299
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 302
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 303
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 304
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 305
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 306
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 307
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 308
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 311
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 314
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getBuiltInTypes()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 318
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v8

    .line 319
    .local v8, "length":I
    new-array v13, v8, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 320
    .local v13, "typeDefinitions":[Lmf/org/apache/xerces/xs/XSTypeDefinition;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Lmf/org/apache/xerces/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    .line 321
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v8, :cond_2

    .line 329
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 395
    .end local v7    # "i":I
    .end local v8    # "length":I
    .end local v13    # "typeDefinitions":[Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_0
    :goto_2
    return-void

    .line 281
    .end local v1    # "schemaFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    :cond_1
    const-string v2, "mf.org.apache.xerces.impl.dv.xs.ExtendedSchemaDVFactoryImpl"

    invoke-static {v2}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-result-object v1

    .restart local v1    # "schemaFactory":Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    goto/16 :goto_0

    .line 322
    .restart local v7    # "i":I
    .restart local v8    # "length":I
    .restart local v13    # "typeDefinitions":[Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2
    aget-object v14, v13, v7

    .line 323
    .local v14, "xtd":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    instance-of v2, v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v2, :cond_3

    .line 324
    check-cast v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .end local v14    # "xtd":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-virtual {v14, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 321
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 331
    .end local v7    # "i":I
    .end local v8    # "length":I
    .end local v13    # "typeDefinitions":[Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 333
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    .line 335
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 336
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v3, 0x3

    iput-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 337
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    .line 340
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 341
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 342
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 343
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 344
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 345
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 348
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 349
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 350
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 351
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 352
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 353
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 354
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 357
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 360
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 361
    const/4 v9, 0x0

    .line 362
    .local v9, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .line 363
    .local v11, "tns":Ljava/lang/String;
    const/4 v12, 0x0

    .line 364
    .local v12, "type":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    const/4 v10, 0x1

    .line 367
    .local v10, "scope":S
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    .line 368
    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    .line 369
    const-string v2, "QName"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v12

    .line 370
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v3, v9, v11, v12, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V

    invoke-virtual {v2, v9, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 373
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    .line 374
    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    .line 375
    const-string v2, "boolean"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v12

    .line 376
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v3, v9, v11, v12, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V

    invoke-virtual {v2, v9, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 378
    const-string v2, "anyURI"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v5

    .line 381
    .local v5, "anyURI":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    .line 382
    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    .line 383
    const-string v2, "#AnonType_schemaLocation"

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v12

    .line 384
    instance-of v2, v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v2, :cond_5

    move-object v2, v12

    .line 385
    check-cast v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    .line 387
    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v3, v9, v11, v12, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V

    invoke-virtual {v2, v9, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    .line 391
    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    .line 392
    move-object v12, v5

    .line 393
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v3, v9, v11, v12, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V

    invoke-virtual {v2, v9, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p2, "locator"    # Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .prologue
    .line 461
    return-void
.end method

.method public declared-synchronized addDocument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "document"    # Ljava/lang/Object;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 467
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .prologue
    .line 410
    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 413
    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .prologue
    .line 416
    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 419
    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .prologue
    .line 449
    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 452
    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    .line 422
    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 425
    return-void
.end method

.method public addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    .line 428
    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .prologue
    .line 431
    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 434
    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .prologue
    .line 437
    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 440
    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .prologue
    .line 455
    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 458
    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .prologue
    .line 443
    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 446
    return-void
.end method

.method public addRedefinedGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 0
    .param p1, "derived"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .param p2, "base"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .param p3, "locator"    # Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .prologue
    .line 464
    return-void
.end method

.method declared-synchronized getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;
    .locals 1

    .prologue
    .line 471
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getSAXParser()Lmf/org/apache/xerces/parsers/SAXParser;
    .locals 1

    .prologue
    .line 474
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public setImportedGrammars(Ljava/util/Vector;)V
    .locals 0
    .param p1, "importedGrammars"    # Ljava/util/Vector;

    .prologue
    .line 407
    return-void
.end method
