.class public final Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;
.super Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.source "SchemaGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Schema4Annotations"
.end annotation


# static fields
.field public static final INSTANCE:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 490
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->INSTANCE:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    return-void
.end method

.method private constructor <init>()V
    .locals 72

    .prologue
    .line 496
    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>()V

    .line 499
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    .line 502
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v3, 0x3

    iput-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setNamespace(Ljava/lang/String;)V

    .line 508
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 509
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 510
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 511
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 512
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 513
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 516
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 517
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 518
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 519
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 520
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 521
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 522
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 525
    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 528
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 531
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createAnnotationElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v64

    .line 532
    .local v64, "annotationDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createAnnotationElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v68

    .line 533
    .local v68, "documentationDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createAnnotationElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v66

    .line 536
    .local v66, "appinfoDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, v64

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, v68

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, v68

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, v66

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, v66

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v64

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v64

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, v64

    move-object/from16 v1, v64

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, v68

    move-object/from16 v1, v68

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, v66

    move-object/from16 v1, v66

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 549
    new-instance v9, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct {v9}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    .line 550
    .local v9, "annotationType":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    new-instance v17, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    .line 551
    .local v17, "documentationType":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    new-instance v25, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    .line 554
    .local v25, "appinfoType":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    move-object/from16 v0, v64

    iput-object v9, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 555
    move-object/from16 v0, v17

    move-object/from16 v1, v68

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 556
    move-object/from16 v0, v25

    move-object/from16 v1, v66

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 559
    new-instance v35, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct/range {v35 .. v35}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    .line 560
    .local v35, "annotationAttrs":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    new-instance v47, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct/range {v47 .. v47}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    .line 561
    .local v47, "documentationAttrs":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    new-instance v59, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct/range {v59 .. v59}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    .line 566
    .local v59, "appinfoAttrs":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    new-instance v65, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct/range {v65 .. v65}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    .line 567
    .local v65, "annotationIDAttr":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    move-object/from16 v0, v65

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 568
    move-object/from16 v0, v65

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v6, "ID"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 569
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 568
    invoke-virtual/range {v2 .. v10}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    .line 570
    const/4 v2, 0x0

    move-object/from16 v0, v65

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    .line 571
    const/4 v2, 0x0

    move-object/from16 v0, v65

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 573
    new-instance v70, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct/range {v70 .. v70}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    .line 574
    .local v70, "documentationSourceAttr":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    move-object/from16 v0, v70

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 575
    move-object/from16 v0, v70

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v3, "anyURI"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 576
    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 575
    invoke-virtual/range {v10 .. v18}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    .line 577
    const/4 v2, 0x0

    move-object/from16 v0, v70

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    .line 578
    const/4 v2, 0x0

    move-object/from16 v0, v70

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 580
    new-instance v69, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct/range {v69 .. v69}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    .line 581
    .local v69, "documentationLangAttr":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    move-object/from16 v0, v69

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 582
    move-object/from16 v0, v69

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    const-string v2, "lang"

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v3, "language"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 583
    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 582
    invoke-virtual/range {v10 .. v18}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    .line 584
    const/4 v2, 0x0

    move-object/from16 v0, v69

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    .line 585
    const/4 v2, 0x0

    move-object/from16 v0, v69

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 587
    new-instance v67, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct/range {v67 .. v67}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    .line 588
    .local v67, "appinfoSourceAttr":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    move-object/from16 v0, v67

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 589
    move-object/from16 v0, v67

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v18, v0

    sget-object v19, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v3, "anyURI"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 590
    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v26, 0x0

    .line 589
    invoke-virtual/range {v18 .. v26}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    .line 591
    const/4 v2, 0x0

    move-object/from16 v0, v67

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    .line 592
    const/4 v2, 0x0

    move-object/from16 v0, v67

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 595
    new-instance v71, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct/range {v71 .. v71}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    .line 596
    .local v71, "otherAttrs":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    aput-object v4, v2, v3

    move-object/from16 v0, v71

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    .line 597
    const/4 v2, 0x2

    move-object/from16 v0, v71

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 598
    const/4 v2, 0x3

    move-object/from16 v0, v71

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    .line 601
    move-object/from16 v0, v35

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    .line 602
    move-object/from16 v0, v71

    move-object/from16 v1, v35

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 604
    move-object/from16 v0, v47

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    .line 605
    move-object/from16 v0, v47

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    .line 606
    move-object/from16 v0, v71

    move-object/from16 v1, v47

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 608
    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    .line 609
    move-object/from16 v0, v71

    move-object/from16 v1, v59

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 613
    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createUnboundedModelGroupParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v37

    .line 615
    .local v37, "annotationParticle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    new-instance v63, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct/range {v63 .. v63}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    .line 616
    .local v63, "annotationChoice":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    const/16 v2, 0x65

    move-object/from16 v0, v63

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 617
    const/4 v2, 0x2

    move-object/from16 v0, v63

    iput v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 618
    const/4 v2, 0x2

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v0, v63

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 619
    move-object/from16 v0, v63

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createChoiceElementParticle(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    aput-object v4, v2, v3

    .line 620
    move-object/from16 v0, v63

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createChoiceElementParticle(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    aput-object v4, v2, v3

    .line 621
    move-object/from16 v0, v63

    move-object/from16 v1, v37

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 625
    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createUnboundedAnyWildcardSequenceParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v49

    .line 628
    .local v49, "anyWCSequenceParticle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v28, v0

    sget-object v29, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 629
    const/16 v30, 0x2

    const/16 v31, 0x0

    const/16 v32, 0x3

    .line 630
    const/16 v33, 0x2

    const/16 v34, 0x0

    const/16 v36, 0x0

    new-instance v38, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    move-object/from16 v26, v9

    .line 628
    invoke-virtual/range {v26 .. v38}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v40, v0

    sget-object v41, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 635
    const/16 v42, 0x2

    const/16 v43, 0x0

    const/16 v44, 0x3

    .line 636
    const/16 v45, 0x3

    const/16 v46, 0x0

    const/16 v48, 0x0

    new-instance v50, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v50

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    move-object/from16 v38, v17

    .line 634
    invoke-virtual/range {v38 .. v50}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v52, v0

    sget-object v53, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 641
    const/16 v54, 0x2

    const/16 v55, 0x0

    const/16 v56, 0x3

    .line 642
    const/16 v57, 0x3

    const/16 v58, 0x0

    const/16 v60, 0x0

    new-instance v62, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v62

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    move-object/from16 v50, v25

    move-object/from16 v61, v49

    .line 640
    invoke-virtual/range {v50 .. v62}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    .line 646
    return-void
.end method

.method private createAnnotationElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 733
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;-><init>()V

    .line 734
    .local v0, "eDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    .line 735
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fTargetNamespace:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    .line 736
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setIsGlobal()V

    .line 737
    const/4 v1, 0x7

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    .line 739
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    .line 740
    return-object v0
.end method

.method private createAnyLaxWildcardParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 772
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 773
    .local v1, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    iput v3, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 774
    iput v3, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 775
    const/4 v2, 0x2

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 777
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    .line 778
    .local v0, "anyWC":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    const/4 v2, 0x0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    .line 779
    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 780
    const/4 v2, 0x3

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    .line 782
    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 783
    return-object v1
.end method

.method private createChoiceElementParticle(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 2
    .param p1, "ref"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    const/4 v1, 0x1

    .line 752
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 753
    .local v0, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 754
    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 755
    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 756
    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 757
    return-object v0
.end method

.method private createUnboundedAnyWildcardSequenceParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 761
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createUnboundedModelGroupParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    .line 762
    .local v0, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    .line 763
    .local v1, "sequence":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    const/16 v2, 0x66

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 764
    iput v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 765
    new-array v2, v3, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 766
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v3, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createAnyLaxWildcardParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    aput-object v4, v2, v3

    .line 767
    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 768
    return-object v0
.end method

.method private createUnboundedModelGroupParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 2

    .prologue
    .line 744
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 745
    .local v0, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    const/4 v1, 0x0

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 746
    const/4 v1, -0x1

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 747
    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 748
    return-object v0
.end method


# virtual methods
.method public addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p2, "locator"    # Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .prologue
    .line 712
    return-void
.end method

.method public declared-synchronized addDocument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "document"    # Ljava/lang/Object;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 718
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .prologue
    .line 661
    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 664
    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .prologue
    .line 667
    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 670
    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .prologue
    .line 700
    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 703
    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    .line 673
    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 676
    return-void
.end method

.method public addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    .line 679
    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .prologue
    .line 682
    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 685
    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .prologue
    .line 688
    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 691
    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .prologue
    .line 706
    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 709
    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .prologue
    .line 694
    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 697
    return-void
.end method

.method public addRedefinedGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 0
    .param p1, "derived"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .param p2, "base"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .param p3, "locator"    # Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .prologue
    .line 715
    return-void
.end method

.method declared-synchronized getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;
    .locals 1

    .prologue
    .line 722
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getSAXParser()Lmf/org/apache/xerces/parsers/SAXParser;
    .locals 1

    .prologue
    .line 725
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public setImportedGrammars(Ljava/util/Vector;)V
    .locals 0
    .param p1, "importedGrammars"    # Ljava/util/Vector;

    .prologue
    .line 658
    return-void
.end method
