.class public Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;
.super Ljava/lang/Object;
.source "XSEmptyCM.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;


# static fields
.field private static final EMPTY:Ljava/util/Vector;

.field private static final STATE_START:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;->EMPTY:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 1
    .param p1, "subGroupHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public endContentModel([I)Z
    .locals 3
    .param p1, "currentState"    # [I

    .prologue
    const/4 v2, 0x0

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "isFinal":Z
    aget v1, p1, v2

    .line 103
    .local v1, "state":I
    if-gez v1, :cond_0

    .line 108
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getTermName(I)Ljava/lang/String;
    .locals 1
    .param p1, "termId"    # I

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCompactedForUPA()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public occurenceInfo([I)[I
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 3
    .param p1, "elementName"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "currentState"    # [I
    .param p3, "subGroupHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    aget v0, p2, v1

    if-gez v0, :cond_0

    .line 81
    const/4 v0, -0x2

    aput v0, p2, v1

    .line 86
    :goto_0
    return-object v2

    .line 85
    :cond_0
    const/4 v0, -0x1

    aput v0, p2, v1

    goto :goto_0
.end method

.method public startContentModel()[I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 131
    sget-object v0, Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;->EMPTY:Ljava/util/Vector;

    return-object v0
.end method
