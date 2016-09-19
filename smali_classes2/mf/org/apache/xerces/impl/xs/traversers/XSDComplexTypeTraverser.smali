.class Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;
.source "XSDComplexTypeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GLOBAL_NUM:I = 0xb

.field private static fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field private static fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;


# instance fields
.field private fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

.field private fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

.field private fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fBlock:S

.field private fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

.field private fContentType:S

.field private fDerivedBy:S

.field private fFinal:S

.field private fGlobalStore:[Ljava/lang/Object;

.field private fGlobalStorePos:I

.field private fIsAbstract:Z

.field private fName:Ljava/lang/String;

.field private fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field private fTargetNamespace:Ljava/lang/String;

.field private fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 72
    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 126
    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 3
    .param p1, "handler"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
    .param p2, "gAttrCheck"    # Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    .line 102
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    .line 104
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    .line 105
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    .line 106
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    .line 107
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    .line 108
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 109
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .line 110
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 111
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 112
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    .line 113
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 114
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 117
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    .line 118
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    .line 123
    return-void
.end method

.method private addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V
    .locals 4
    .param p1, "annotation"    # Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .prologue
    const/4 v3, 0x0

    .line 1242
    if-nez p1, :cond_0

    .line 1256
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    if-nez v1, :cond_1

    .line 1249
    const/4 v1, 0x1

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 1255
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    goto :goto_0

    .line 1251
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 1252
    .local v0, "tempArray":[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1253
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    goto :goto_1
.end method

.method private contentBackup()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1200
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1201
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    .line 1202
    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    .line 1204
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 1205
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, 0xb

    new-array v0, v1, [Ljava/lang/Object;

    .line 1206
    .local v0, "newArray":[Ljava/lang/Object;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1207
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    .line 1209
    .end local v0    # "newArray":[Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    aput-object v3, v1, v2

    .line 1210
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    aput-object v1, v2, v3

    .line 1211
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1212
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1214
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    new-instance v3, Ljava/lang/Integer;

    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    shl-int/lit8 v4, v4, 0x10

    iget-short v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    .line 1215
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    new-instance v3, Ljava/lang/Integer;

    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    shl-int/lit8 v4, v4, 0x10

    iget-short v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    .line 1216
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    aput-object v3, v1, v2

    .line 1217
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    aput-object v3, v1, v2

    .line 1218
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v3, v1, v2

    .line 1219
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v1, v2

    .line 1220
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    aput-object v3, v1, v2

    .line 1221
    return-void

    .line 1210
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0
.end method

.method private contentRestore()V
    .locals 3

    .prologue
    .line 1224
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 1225
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1226
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1227
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .line 1228
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1229
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1230
    .local v0, "i":I
    shr-int/lit8 v1, v0, 0x10

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    .line 1231
    int-to-short v1, v0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    .line 1232
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1233
    shr-int/lit8 v1, v0, 0x10

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    .line 1234
    int-to-short v1, v0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    .line 1235
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    .line 1236
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    .line 1237
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    .line 1238
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1239
    return-void
.end method

.method private genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 3
    .param p1, "complexTypeDecl"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 1166
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "#AnonType_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1167
    .local v1, "typeName":Ljava/lang/StringBuffer;
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .line 1168
    .local v0, "node":Lmf/org/w3c/dom/Element;
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getDocument(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Document;

    move-result-object v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 1172
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1169
    :cond_1
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1170
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method private static getErrorContent()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v3, :cond_0

    .line 75
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 76
    .local v2, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    const/4 v3, 0x2

    iput-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 77
    invoke-static {}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorWildcard()Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v3

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 78
    iput v4, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 79
    const/4 v3, -0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 80
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    .line 81
    .local v1, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    const/16 v3, 0x66

    iput-short v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 82
    iput v5, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 83
    new-array v3, v5, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 84
    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v2, v3, v4

    .line 85
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 86
    .local v0, "errorContent":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    const/4 v3, 0x3

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 87
    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 88
    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 90
    :cond_0
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    return-object v3
.end method

.method private static getErrorWildcard()Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 2

    .prologue
    .line 93
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v1, :cond_0

    .line 94
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    .line 95
    .local v0, "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    const/4 v1, 0x2

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    .line 96
    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 98
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-object v1
.end method

.method private handleComplexTypeError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "e"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 1179
    if-eqz p1, :cond_0

    .line 1180
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1187
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1188
    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    .line 1189
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1190
    invoke-static {}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorContent()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1193
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorWildcard()Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1195
    return-void
.end method

.method private isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z
    .locals 2
    .param p1, "e"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 1140
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, "elementName":Ljava/lang/String;
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1143
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1144
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1145
    :cond_0
    const/4 v1, 0x1

    .line 1147
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    .locals 12
    .param p1, "fromAttrGrp"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .param p2, "toAttrGrp"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "extension"    # Z
    .param p5, "elem"    # Lmf/org/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    .prologue
    .line 970
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    .line 971
    .local v2, "attrUseS":Lmf/org/apache/xerces/xs/XSObjectList;
    const/4 v6, 0x0

    .line 972
    .local v6, "oneAttrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v1

    .line 973
    .local v1, "attrCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v1, :cond_1

    .line 998
    if-eqz p4, :cond_0

    .line 999
    iget-object v7, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v7, :cond_4

    .line 1000
    iget-object v7, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iput-object v7, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1013
    :cond_0
    return-void

    .line 974
    :cond_1
    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v6

    .end local v6    # "oneAttrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    check-cast v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 975
    .restart local v6    # "oneAttrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    iget-object v7, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 976
    iget-object v8, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v8

    .line 975
    invoke-virtual {p2, v7, v8}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v3

    .line 977
    .local v3, "existingAttrUse":Lmf/org/apache/xerces/xs/XSAttributeUse;
    if-nez v3, :cond_2

    .line 979
    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v5

    .line 980
    .local v5, "idName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 981
    new-instance v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v8, "ct-props-correct.5"

    .line 982
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p3, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    iget-object v11, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 981
    move-object/from16 v0, p5

    invoke-direct {v7, v8, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v7

    .line 986
    .end local v5    # "idName":Ljava/lang/String;
    :cond_2
    if-eq v3, v6, :cond_3

    .line 987
    if-eqz p4, :cond_3

    .line 988
    const-string v7, "ct-props-correct.4"

    .line 989
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p3, v8, v9

    const/4 v9, 0x1

    iget-object v10, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 988
    move-object/from16 v0, p5

    invoke-virtual {p0, v7, v8, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 993
    invoke-virtual {p2, v3, v6}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->replaceAttributeUse(Lmf/org/apache/xerces/xs/XSAttributeUse;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V

    .line 973
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1002
    .end local v3    # "existingAttrUse":Lmf/org/apache/xerces/xs/XSAttributeUse;
    :cond_4
    iget-object v7, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz v7, :cond_0

    .line 1003
    iget-object v7, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v8, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v9, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-short v9, v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {v7, v8, v9}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performUnionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v7

    iput-object v7, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1004
    iget-object v7, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v7, :cond_0

    .line 1008
    new-instance v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v8, "src-ct.5"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p3, v9, v10

    move-object/from16 v0, p5

    invoke-direct {v7, v8, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v7
.end method

.method private processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 14
    .param p1, "complexContentChild"    # Lmf/org/w3c/dom/Element;
    .param p2, "isMixed"    # Z
    .param p3, "isDerivation"    # Z
    .param p4, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p5, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    .prologue
    .line 1020
    const/4 v3, 0x0

    .line 1021
    .local v3, "attrNode":Lmf/org/w3c/dom/Element;
    const/4 v13, 0x0

    .line 1024
    .local v13, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    const/4 v10, 0x0

    .line 1025
    .local v10, "emptyParticle":Z
    if-eqz p1, :cond_0

    .line 1032
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    .line 1034
    .local v9, "childName":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1036
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v2, p1, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v13

    .line 1038
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    .line 1079
    .end local v9    # "childName":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v10, :cond_2

    .line 1081
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    .line 1083
    .local v8, "child":Lmf/org/w3c/dom/Element;
    if-eqz v8, :cond_1

    .line 1084
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    .line 1089
    :cond_1
    if-nez v8, :cond_2

    .line 1090
    const/4 v13, 0x0

    .line 1095
    .end local v8    # "child":Lmf/org/w3c/dom/Element;
    :cond_2
    if-nez v13, :cond_3

    if-eqz p2, :cond_3

    .line 1096
    invoke-static {}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getEmptySequence()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v13

    .line 1098
    :cond_3
    iput-object v13, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1103
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v2, :cond_b

    .line 1104
    const/4 v2, 0x0

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    .line 1114
    :goto_1
    if-eqz v3, :cond_f

    .line 1115
    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1116
    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.1"

    .line 1117
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1116
    invoke-direct {v2, v4, v5, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    .line 1040
    .restart local v9    # "childName":Ljava/lang/String;
    :cond_4
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1042
    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1041
    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSequence(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .end local v3    # "attrNode":Lmf/org/w3c/dom/Element;
    move-result-object v13

    .line 1043
    if-eqz v13, :cond_5

    .line 1044
    iget-object v11, v13, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 1045
    .local v11, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    iget v2, v11, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v2, :cond_5

    .line 1046
    const/4 v10, 0x1

    .line 1048
    .end local v11    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    :cond_5
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    .line 1049
    .restart local v3    # "attrNode":Lmf/org/w3c/dom/Element;
    goto :goto_0

    .line 1050
    :cond_6
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1052
    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1051
    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .end local v3    # "attrNode":Lmf/org/w3c/dom/Element;
    move-result-object v13

    .line 1053
    if-eqz v13, :cond_7

    iget v2, v13, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v2, :cond_7

    .line 1054
    iget-object v11, v13, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 1055
    .restart local v11    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    iget v2, v11, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v2, :cond_7

    .line 1056
    const/4 v10, 0x1

    .line 1058
    .end local v11    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    :cond_7
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    .line 1059
    .restart local v3    # "attrNode":Lmf/org/w3c/dom/Element;
    goto/16 :goto_0

    .line 1060
    :cond_8
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1062
    const/16 v6, 0x8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1061
    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAll(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .end local v3    # "attrNode":Lmf/org/w3c/dom/Element;
    move-result-object v13

    .line 1063
    if-eqz v13, :cond_9

    .line 1064
    iget-object v11, v13, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 1065
    .restart local v11    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    iget v2, v11, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v2, :cond_9

    .line 1066
    const/4 v10, 0x1

    .line 1068
    .end local v11    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    :cond_9
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    .line 1069
    .restart local v3    # "attrNode":Lmf/org/w3c/dom/Element;
    goto/16 :goto_0

    .line 1072
    :cond_a
    move-object v3, p1

    goto/16 :goto_0

    .line 1105
    .end local v9    # "childName":Ljava/lang/String;
    :cond_b
    if-eqz p2, :cond_c

    .line 1106
    const/4 v2, 0x3

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    goto/16 :goto_1

    .line 1108
    :cond_c
    const/4 v2, 0x2

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    goto/16 :goto_1

    .line 1121
    :cond_d
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v2, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    .line 1122
    .local v12, "node":Lmf/org/w3c/dom/Element;
    if-eqz v12, :cond_e

    .line 1123
    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.1"

    .line 1124
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1123
    invoke-direct {v2, v4, v5, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    .line 1129
    :cond_e
    if-nez p3, :cond_f

    .line 1130
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    .line 1136
    .end local v12    # "node":Lmf/org/w3c/dom/Element;
    :cond_f
    return-void
.end method

.method private traverseComplexContent(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 34
    .param p1, "complexContentElement"    # Lmf/org/w3c/dom/Element;
    .param p2, "mixedOnType"    # Z
    .param p3, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p4, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    .prologue
    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    .line 697
    .local v6, "complexContentAttrValues":[Ljava/lang/Object;
    move/from16 v13, p2

    .line 698
    .local v13, "mixedContent":Z
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    aget-object v30, v6, v3

    check-cast v30, Ljava/lang/Boolean;

    .line 699
    .local v30, "mixedAtt":Ljava/lang/Boolean;
    if-eqz v30, :cond_0

    .line 700
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 708
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 710
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v23

    .line 711
    .local v23, "complexContent":Lmf/org/w3c/dom/Element;
    if-eqz v23, :cond_1

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 712
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 713
    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    .line 723
    .end local v23    # "complexContent":Lmf/org/w3c/dom/Element;
    .local v8, "complexContent":Lmf/org/w3c/dom/Element;
    :goto_0
    if-nez v8, :cond_3

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 725
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.2"

    .line 726
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    aput-object v11, v7, v9

    .line 725
    move-object/from16 v0, p1

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 716
    .end local v8    # "complexContent":Lmf/org/w3c/dom/Element;
    .restart local v23    # "complexContent":Lmf/org/w3c/dom/Element;
    :cond_1
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 717
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 718
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_2
    move-object/from16 v8, v23

    .end local v23    # "complexContent":Lmf/org/w3c/dom/Element;
    .restart local v8    # "complexContent":Lmf/org/w3c/dom/Element;
    goto :goto_0

    .line 733
    .end local v5    # "text":Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    .line 734
    .local v24, "complexContentName":Ljava/lang/String;
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 735
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    .line 743
    :goto_1
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v26

    .line 744
    .local v26, "elemTmp":Lmf/org/w3c/dom/Element;
    if-eqz v26, :cond_6

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 746
    invoke-static/range {v26 .. v26}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v32

    .line 747
    .local v32, "siblingName":Ljava/lang/String;
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.1"

    .line 748
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    aput-object v32, v7, v9

    .line 747
    move-object/from16 v0, v26

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 736
    .end local v26    # "elemTmp":Lmf/org/w3c/dom/Element;
    .end local v32    # "siblingName":Ljava/lang/String;
    :cond_4
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 737
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    goto :goto_1

    .line 739
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 740
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.1"

    .line 741
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    aput-object v24, v7, v9

    .line 740
    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 751
    .restart local v26    # "elemTmp":Lmf/org/w3c/dom/Element;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v8, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v10

    .line 753
    .local v10, "derivationTypeAttrValues":[Ljava/lang/Object;
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v22, v10, v3

    check-cast v22, Lmf/org/apache/xerces/xni/QName;

    .line 759
    .local v22, "baseTypeName":Lmf/org/apache/xerces/xni/QName;
    if-nez v22, :cond_7

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 762
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-att-must-appear"

    .line 763
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v24, v7, v9

    const/4 v9, 0x1

    const-string v11, "base"

    aput-object v11, v7, v9

    .line 762
    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 766
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    .line 767
    const/4 v4, 0x7

    .line 766
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v4, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 771
    .local v33, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-nez v33, :cond_8

    .line 772
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 774
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>()V

    throw v3

    .line 777
    :cond_8
    move-object/from16 v0, v33

    instance-of v3, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-nez v3, :cond_9

    .line 778
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 780
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "src-ct.1"

    .line 781
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-interface/range {v33 .. v33}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 780
    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_9
    move-object/from16 v21, v33

    .line 783
    check-cast v21, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 784
    .local v21, "baseType":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 789
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getFinal()S

    move-result v3

    move-object/from16 v0, p0

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    and-int/2addr v3, v4

    if-eqz v3, :cond_b

    .line 790
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 792
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 793
    const-string v28, "cos-ct-extends.1.1"

    .line 794
    .local v28, "errorKey":Ljava/lang/String;
    :goto_2
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    .line 795
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v9, v4, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .line 794
    move-object/from16 v0, v28

    invoke-direct {v3, v0, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 793
    .end local v28    # "errorKey":Ljava/lang/String;
    :cond_a
    const-string v28, "derivation-ok-restriction.1"

    goto :goto_2

    .line 801
    :cond_b
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    .line 803
    if-eqz v8, :cond_e

    .line 805
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 806
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v8, v10, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 807
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    .line 815
    :cond_c
    :goto_3
    if-eqz v8, :cond_f

    .line 816
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 819
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.1"

    .line 820
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    aput-object v11, v7, v9

    .line 819
    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 810
    :cond_d
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 811
    .restart local v5    # "text":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 812
    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object v9, v5

    move-object/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_3

    .line 824
    .end local v5    # "text":Ljava/lang/String;
    :cond_e
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 825
    .restart local v5    # "text":Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 826
    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object v9, v5

    move-object/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 834
    .end local v5    # "text":Ljava/lang/String;
    :cond_f
    const/4 v14, 0x1

    move-object/from16 v11, p0

    move-object v12, v8

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    :try_start_0
    invoke-direct/range {v11 .. v16}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v20

    check-cast v20, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 846
    .local v20, "baseContent":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    .line 855
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    .line 856
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_10

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 859
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "derivation-ok-restriction.5.4.1.2"

    .line 860
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 859
    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 836
    .end local v20    # "baseContent":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :catch_0
    move-exception v25

    .line 837
    .local v25, "e":Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 839
    throw v25

    .line 865
    .end local v25    # "e":Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    .restart local v20    # "baseContent":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_10
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v14, p0

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v19}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_1

    .line 872
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    .line 874
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, v21

    if-eq v0, v3, :cond_13

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v27

    .line 876
    .local v27, "errArgs":[Ljava/lang/Object;
    if-eqz v27, :cond_13

    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 879
    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    move-object/from16 v0, v27

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v27, v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v4, v3, v0, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    .line 866
    .end local v27    # "errArgs":[Ljava/lang/Object;
    :catch_1
    move-exception v25

    .line 867
    .restart local v25    # "e":Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 869
    throw v25

    .line 889
    .end local v25    # "e":Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v3, :cond_14

    .line 890
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    .line 891
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getSimpleType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 892
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 943
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    .line 945
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v14, p0

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v19}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_2

    .line 955
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 958
    return-void

    .line 894
    :cond_14
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    if-eqz v3, :cond_12

    .line 900
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_15

    .line 901
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_15

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 904
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "cos-ct-extends.1.4.3.2.2.1.a"

    .line 905
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    .line 904
    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 907
    :cond_15
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    .line 908
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_16

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 911
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "cos-ct-extends.1.4.3.2.2.1.b"

    .line 912
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    .line 911
    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 916
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_17

    .line 917
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v4, 0x67

    if-eq v3, v4, :cond_18

    .line 918
    :cond_17
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_19

    .line 919
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v4, 0x67

    if-ne v3, v4, :cond_19

    .line 920
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 922
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "cos-all-limited.1.2"

    .line 923
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    .line 922
    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 926
    :cond_19
    new-instance v29, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct/range {v29 .. v29}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    .line 927
    .local v29, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    const/16 v3, 0x66

    move-object/from16 v0, v29

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 928
    const/4 v3, 0x2

    move-object/from16 v0, v29

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 929
    const/4 v3, 0x2

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v0, v29

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 930
    move-object/from16 v0, v29

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v7, 0x0

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v3, v4, v7

    .line 931
    move-object/from16 v0, v29

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v7, v3, v4

    .line 932
    sget-object v3, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v29

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 934
    new-instance v31, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct/range {v31 .. v31}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 935
    .local v31, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    const/4 v3, 0x3

    move-object/from16 v0, v31

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 936
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 937
    sget-object v3, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v31

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 939
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    goto/16 :goto_4

    .line 946
    .end local v29    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .end local v31    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :catch_2
    move-exception v25

    .line 947
    .restart local v25    # "e":Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 949
    throw v25
.end method

.method private traverseComplexContentDecl(Lmf/org/w3c/dom/Element;Z)V
    .locals 0
    .param p1, "complexContentDecl"    # Lmf/org/w3c/dom/Element;
    .param p2, "mixedOnComplexTypeDecl"    # Z

    .prologue
    .line 1155
    return-void
.end method

.method private traverseComplexTypeDecl(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 30
    .param p1, "complexTypeDecl"    # Lmf/org/w3c/dom/Element;
    .param p2, "complexTypeName"    # Ljava/lang/String;
    .param p3, "attrValues"    # [Ljava/lang/Object;
    .param p4, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p5, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 233
    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 234
    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .line 235
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    aget-object v22, p3, v4

    check-cast v22, Ljava/lang/Boolean;

    .line 236
    .local v22, "abstractAtt":Ljava/lang/Boolean;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    aget-object v23, p3, v4

    check-cast v23, Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 237
    .local v23, "blockAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    aget-object v28, p3, v4

    check-cast v28, Ljava/lang/Boolean;

    .line 238
    .local v28, "mixedAtt":Ljava/lang/Boolean;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v27, p3, v4

    check-cast v27, Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 240
    .local v27, "finalAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p4

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    .line 244
    if-nez v23, :cond_1

    move-object/from16 v0, p4

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fBlockDefault:S

    :goto_0
    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    .line 245
    if-nez v27, :cond_2

    move-object/from16 v0, p4

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    :goto_1
    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    .line 247
    move-object/from16 v0, p0

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    .line 248
    move-object/from16 v0, p0

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    .line 250
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    .line 251
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 253
    const/4 v8, 0x0

    .line 259
    .local v8, "child":Lmf/org/w3c/dom/Element;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 260
    .end local v8    # "child":Lmf/org/w3c/dom/Element;
    .local v24, "child":Lmf/org/w3c/dom/Element;
    if-eqz v24, :cond_6

    .line 261
    :try_start_1
    invoke-static/range {v24 .. v24}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 262
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 263
    invoke-static/range {v24 .. v24}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 271
    .end local v24    # "child":Lmf/org/w3c/dom/Element;
    .restart local v8    # "child":Lmf/org/w3c/dom/Element;
    :goto_3
    if-eqz v8, :cond_8

    :try_start_2
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 272
    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v5, "s4s-elt-invalid-content.1"

    .line 273
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 272
    invoke-direct {v4, v5, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_0

    .line 338
    :catch_0
    move-exception v25

    .line 339
    .local v25, "e":Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    :goto_4
    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorSubstText:[Ljava/lang/Object;

    .line 340
    move-object/from16 v0, v25

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorElem:Lmf/org/w3c/dom/Element;

    .line 339
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->handleComplexTypeError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 346
    .end local v25    # "e":Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    :cond_0
    :goto_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 347
    move-object/from16 v0, p0

    iget-short v13, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    move-object/from16 v0, p0

    iget-short v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    move/from16 v17, v0

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v20, v0

    new-instance v21, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    if-nez v4, :cond_c

    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, v21

    invoke-direct {v0, v5, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    .line 346
    invoke-virtual/range {v9 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-object v4

    .line 244
    .end local v8    # "child":Lmf/org/w3c/dom/Element;
    :cond_1
    invoke-virtual/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v4

    goto/16 :goto_0

    .line 245
    :cond_2
    invoke-virtual/range {v27 .. v27}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v4

    goto/16 :goto_1

    .line 250
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 266
    .restart local v24    # "child":Lmf/org/w3c/dom/Element;
    :cond_4
    :try_start_3
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "text":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 268
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_5
    move-object/from16 v8, v24

    .end local v24    # "child":Lmf/org/w3c/dom/Element;
    .restart local v8    # "child":Lmf/org/w3c/dom/Element;
    goto/16 :goto_3

    .line 278
    .end local v6    # "text":Ljava/lang/String;
    .end local v8    # "child":Lmf/org/w3c/dom/Element;
    .restart local v24    # "child":Lmf/org/w3c/dom/Element;
    :cond_6
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 279
    .restart local v6    # "text":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 280
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    move-object/from16 v8, v24

    .line 286
    .end local v6    # "text":Ljava/lang/String;
    .end local v24    # "child":Lmf/org/w3c/dom/Element;
    .restart local v8    # "child":Lmf/org/w3c/dom/Element;
    :cond_8
    if-nez v8, :cond_9

    .line 292
    :try_start_4
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 293
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    .line 294
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_5

    .line 297
    :cond_9
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 298
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    .line 297
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 298
    if-eqz v4, :cond_a

    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v8, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSimpleContent(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 303
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v26

    .line 304
    .local v26, "elemTmp":Lmf/org/w3c/dom/Element;
    if-eqz v26, :cond_0

    .line 305
    invoke-static/range {v26 .. v26}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v29

    .line 306
    .local v29, "siblingName":Ljava/lang/String;
    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v5, "s4s-elt-invalid-content.1"

    .line 307
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object v29, v7, v9

    .line 306
    move-object/from16 v0, v26

    invoke-direct {v4, v5, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    .line 311
    .end local v26    # "elemTmp":Lmf/org/w3c/dom/Element;
    .end local v29    # "siblingName":Ljava/lang/String;
    :cond_a
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 312
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 312
    if-eqz v4, :cond_b

    .line 313
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v8, v4, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexContent(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 315
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v26

    .line 316
    .restart local v26    # "elemTmp":Lmf/org/w3c/dom/Element;
    if-eqz v26, :cond_0

    .line 317
    invoke-static/range {v26 .. v26}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v29

    .line 318
    .restart local v29    # "siblingName":Ljava/lang/String;
    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v5, "s4s-elt-invalid-content.1"

    .line 319
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object v29, v7, v9

    .line 318
    move-object/from16 v0, v26

    invoke-direct {v4, v5, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    .line 331
    .end local v26    # "elemTmp":Lmf/org/w3c/dom/Element;
    .end local v29    # "siblingName":Ljava/lang/String;
    :cond_b
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 332
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    .line 333
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 349
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v4, v4

    goto/16 :goto_6

    .line 338
    .end local v8    # "child":Lmf/org/w3c/dom/Element;
    .restart local v24    # "child":Lmf/org/w3c/dom/Element;
    :catch_1
    move-exception v25

    move-object/from16 v8, v24

    .end local v24    # "child":Lmf/org/w3c/dom/Element;
    .restart local v8    # "child":Lmf/org/w3c/dom/Element;
    goto/16 :goto_4
.end method

.method private traverseSimpleContent(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 42
    .param p1, "simpleContentElement"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    .prologue
    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    .line 366
    .local v6, "simpleContentAttrValues":[Ljava/lang/Object;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    .line 367
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 369
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v39

    .line 370
    .local v39, "simpleContent":Lmf/org/w3c/dom/Element;
    if-eqz v39, :cond_1

    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 372
    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v39

    .line 382
    :cond_0
    :goto_0
    if-nez v39, :cond_2

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 384
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.2"

    .line 385
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    aput-object v11, v7, v9

    .line 384
    move-object/from16 v0, p1

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 375
    :cond_1
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 376
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 377
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_0

    .line 392
    .end local v5    # "text":Ljava/lang/String;
    :cond_2
    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v40

    .line 393
    .local v40, "simpleContentName":Ljava/lang/String;
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 394
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    .line 403
    :goto_1
    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v29

    .line 404
    .local v29, "elemTmp":Lmf/org/w3c/dom/Element;
    if-eqz v29, :cond_5

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 406
    invoke-static/range {v29 .. v29}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v38

    .line 407
    .local v38, "siblingName":Ljava/lang/String;
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.1"

    .line 408
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    aput-object v38, v7, v9

    .line 407
    move-object/from16 v0, v29

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 395
    .end local v29    # "elemTmp":Lmf/org/w3c/dom/Element;
    .end local v38    # "siblingName":Ljava/lang/String;
    :cond_3
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    goto :goto_1

    .line 398
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 399
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.1"

    .line 400
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    aput-object v40, v7, v9

    .line 399
    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 412
    .restart local v29    # "elemTmp":Lmf/org/w3c/dom/Element;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v10

    .line 414
    .local v10, "derivationTypeAttrValues":[Ljava/lang/Object;
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v26, v10, v3

    check-cast v26, Lmf/org/apache/xerces/xni/QName;

    .line 420
    .local v26, "baseTypeName":Lmf/org/apache/xerces/xni/QName;
    if-nez v26, :cond_6

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 423
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-att-must-appear"

    .line 424
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v40, v7, v9

    const/4 v9, 0x1

    const-string v11, "base"

    aput-object v11, v7, v9

    .line 423
    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 427
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    .line 428
    const/4 v4, 0x7

    .line 427
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v39

    invoke-virtual {v3, v0, v4, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 430
    .local v41, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-nez v41, :cond_7

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 433
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>()V

    throw v3

    .line 436
    :cond_7
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 438
    const/4 v15, 0x0

    .line 439
    .local v15, "baseValidator":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    const/16 v24, 0x0

    .line 440
    .local v24, "baseComplexType":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    const/16 v25, 0x0

    .line 443
    .local v25, "baseFinalSet":I
    invoke-interface/range {v41 .. v41}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_b

    move-object/from16 v24, v41

    .line 445
    check-cast v24, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 446
    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getFinal()S

    move-result v25

    .line 448
    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 449
    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getSimpleType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v15

    .end local v15    # "baseValidator":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    check-cast v15, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 478
    .restart local v15    # "baseValidator":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    and-int v3, v3, v25

    if-eqz v3, :cond_e

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 481
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 482
    const-string v31, "cos-ct-extends.1.1"

    .line 483
    .local v31, "errorKey":Ljava/lang/String;
    :goto_3
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    .line 484
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v9, v4, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .line 483
    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-direct {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 452
    .end local v31    # "errorKey":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 453
    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    .line 454
    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v3

    if-nez v3, :cond_8

    .line 457
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 459
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "src-ct.2.1"

    .line 460
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 459
    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_b
    move-object/from16 v15, v41

    .line 464
    check-cast v15, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 466
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 469
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "src-ct.2.1"

    .line 470
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-interface {v15}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 469
    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 472
    :cond_c
    invoke-interface {v15}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinal()S

    move-result v25

    goto/16 :goto_2

    .line 482
    :cond_d
    const-string v31, "derivation-ok-restriction.1"

    goto/16 :goto_3

    .line 490
    :cond_e
    move-object/from16 v8, v39

    .line 491
    .local v8, "scElement":Lmf/org/w3c/dom/Element;
    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v39

    .line 492
    if-eqz v39, :cond_11

    .line 495
    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 496
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v10, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 497
    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v39

    .line 506
    :cond_f
    :goto_4
    if-eqz v39, :cond_12

    .line 507
    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 508
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 510
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.1"

    .line 511
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    aput-object v11, v7, v9

    .line 510
    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 500
    :cond_10
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 501
    .restart local v5    # "text":Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 502
    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object v9, v5

    move-object/from16 v12, p2

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_4

    .line 516
    .end local v5    # "text":Ljava/lang/String;
    :cond_11
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 517
    .restart local v5    # "text":Ljava/lang/String;
    if-eqz v5, :cond_12

    .line 518
    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object v9, v5

    move-object/from16 v12, p2

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 525
    .end local v5    # "text":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    .line 531
    if-eqz v39, :cond_15

    .line 532
    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v27

    .line 536
    .local v27, "dv":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    if-nez v27, :cond_13

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 539
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>()V

    throw v3

    .line 544
    :cond_13
    if-eqz v15, :cond_14

    .line 546
    invoke-interface {v15}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinal()S

    move-result v3

    .line 545
    move-object/from16 v0, v27

    invoke-static {v0, v15, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivationOk(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v3

    .line 546
    if-nez v3, :cond_14

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 549
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "derivation-ok-restriction.5.2.2.1"

    .line 550
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-interface/range {v27 .. v27}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    const/4 v9, 0x2

    invoke-interface {v15}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 549
    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 553
    :cond_14
    move-object/from16 v15, v27

    .line 554
    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v39

    .line 559
    .end local v27    # "dv":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :cond_15
    if-nez v15, :cond_16

    .line 560
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 562
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "src-ct.2.2"

    .line 563
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    .line 562
    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 569
    :cond_16
    const/16 v17, 0x0

    .line 570
    .local v17, "attrNode":Lmf/org/w3c/dom/Element;
    const/16 v33, 0x0

    .line 571
    .local v33, "facetData":Lmf/org/apache/xerces/impl/dv/XSFacets;
    const/16 v37, 0x0

    .line 572
    .local v37, "presentFacets":S
    const/16 v35, 0x0

    .line 574
    .local v35, "fixedFacets":S
    if-eqz v39, :cond_17

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v15, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseFacets(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    move-result-object v34

    .line 576
    .local v34, "fi":Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;
    move-object/from16 v0, v34

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->nodeAfterFacets:Lmf/org/w3c/dom/Element;

    move-object/from16 v17, v0

    .line 577
    move-object/from16 v0, v34

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->facetdata:Lmf/org/apache/xerces/impl/dv/XSFacets;

    move-object/from16 v33, v0

    .line 578
    move-object/from16 v0, v34

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fPresentFacets:S

    move/from16 v37, v0

    .line 579
    move-object/from16 v0, v34

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fFixedFacets:S

    move/from16 v35, v0

    .line 582
    .end local v34    # "fi":Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;
    :cond_17
    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v12

    .line 583
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v11, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p2

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 585
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p2

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, v33

    move/from16 v1, v37

    move/from16 v2, v35

    invoke-interface {v3, v0, v1, v2, v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    instance-of v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v3, :cond_18

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    .line 599
    :cond_18
    if-eqz v17, :cond_1a

    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 603
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.1"

    .line 604
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 603
    move-object/from16 v0, v17

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 587
    :catch_0
    move-exception v32

    .line 588
    .local v32, "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
    invoke-virtual/range {v32 .. v32}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v11, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p2

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_5

    .line 607
    .end local v32    # "ex":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v18, v0

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v16, p0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    .line 607
    invoke-virtual/range {v16 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v36

    .line 609
    .local v36, "node":Lmf/org/w3c/dom/Element;
    if-eqz v36, :cond_1a

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 612
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.1"

    .line 613
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-static/range {v36 .. v36}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 612
    move-object/from16 v0, v36

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 619
    .end local v36    # "node":Lmf/org/w3c/dom/Element;
    :cond_1a
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v18, p0

    move-object/from16 v23, p1

    invoke-direct/range {v18 .. v23}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_1

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v30

    .line 629
    .local v30, "errArgs":[Ljava/lang/Object;
    if-eqz v30, :cond_1f

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 632
    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    move-object/from16 v0, v30

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v30, v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-direct {v4, v3, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    .line 620
    .end local v30    # "errArgs":[Ljava/lang/Object;
    :catch_1
    move-exception v28

    .line 621
    .local v28, "e":Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 623
    throw v28

    .line 641
    .end local v12    # "name":Ljava/lang/String;
    .end local v17    # "attrNode":Lmf/org/w3c/dom/Element;
    .end local v28    # "e":Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    .end local v33    # "facetData":Lmf/org/apache/xerces/impl/dv/XSFacets;
    .end local v35    # "fixedFacets":S
    .end local v37    # "presentFacets":S
    :cond_1b
    move-object/from16 v0, p0

    iput-object v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 642
    if-eqz v39, :cond_1e

    .line 646
    move-object/from16 v17, v39

    .line 647
    .restart local v17    # "attrNode":Lmf/org/w3c/dom/Element;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 650
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.1"

    .line 651
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 650
    move-object/from16 v0, v17

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 654
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v18, v0

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v16, p0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    .line 654
    invoke-virtual/range {v16 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v36

    .line 657
    .restart local v36    # "node":Lmf/org/w3c/dom/Element;
    if-eqz v36, :cond_1d

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 660
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "s4s-elt-invalid-content.1"

    .line 661
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-static/range {v36 .. v36}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 660
    move-object/from16 v0, v36

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    .line 665
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    .line 668
    .end local v17    # "attrNode":Lmf/org/w3c/dom/Element;
    .end local v36    # "node":Lmf/org/w3c/dom/Element;
    :cond_1e
    if-eqz v24, :cond_1f

    .line 670
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v18, p0

    move-object/from16 v23, p1

    invoke-direct/range {v18 .. v23}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_2

    .line 680
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 682
    return-void

    .line 671
    :catch_2
    move-exception v28

    .line 672
    .restart local v28    # "e":Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 674
    throw v28
.end method

.method private traverseSimpleContentDecl(Lmf/org/w3c/dom/Element;)V
    .locals 0
    .param p1, "simpleContentDecl"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 1151
    return-void
.end method


# virtual methods
.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 10
    .param p1, "complexTypeNode"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v9, 0x1

    .line 185
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, v9, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    .line 187
    .local v3, "attrValues":[Ljava/lang/Object;
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v3, v0

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "complexTypeName":Ljava/lang/String;
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentBackup()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 189
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexTypeDecl(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v7

    .line 191
    .local v7, "type":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentRestore()V

    .line 193
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    invoke-virtual {p3, v7, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V

    .line 195
    if-nez v2, :cond_1

    .line 196
    const-string v0, "s4s-att-must-appear"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    aput-object v5, v1, v4

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v4, v1, v9

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 197
    const/4 v7, 0x0

    .line 221
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 223
    return-object v7

    .line 199
    :cond_1
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-nez v0, :cond_2

    .line 200
    invoke-virtual {p3, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V

    .line 204
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "loc":Ljava/lang/String;
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v8

    .line 206
    .local v8, "type2":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-nez v8, :cond_3

    .line 207
    invoke-virtual {p3, v7, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V

    .line 211
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v0, :cond_0

    .line 212
    if-eqz v8, :cond_4

    .line 213
    instance-of v0, v8, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_4

    move-object v7, v8

    .line 214
    check-cast v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 217
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    goto :goto_0
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 7
    .param p1, "complexTypeNode"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 158
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    .line 160
    .local v3, "attrValues":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "complexTypeName":Ljava/lang/String;
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentBackup()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 162
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexTypeDecl(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v6

    .line 164
    .local v6, "type":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentRestore()V

    .line 166
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V

    .line 167
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    .line 168
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 170
    return-object v6
.end method
