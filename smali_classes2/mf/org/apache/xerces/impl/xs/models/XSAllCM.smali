.class public Lmf/org/apache/xerces/impl/xs/models/XSAllCM;
.super Ljava/lang/Object;
.source "XSAllCM.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;


# static fields
.field private static final STATE_CHILD:S = 0x1s

.field private static final STATE_START:S = 0x0s

.field private static final STATE_VALID:S = 0x1s


# instance fields
.field private final fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private final fHasOptionalContent:Z

.field private final fIsOptionalElement:[Z

.field private fNumElements:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "hasOptionalContent"    # Z
    .param p2, "size"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    .line 63
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fHasOptionalContent:Z

    .line 64
    new-array v0, p2, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 65
    new-array v0, p2, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fIsOptionalElement:[Z

    .line 66
    return-void
.end method


# virtual methods
.method public addElement(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Z)V
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "isOptional"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    aput-object p1, v0, v1

    .line 70
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fIsOptionalElement:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    aput-boolean p2, v0, v1

    .line 71
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    .line 72
    return-void
.end method

.method public checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 7
    .param p1, "subGroupHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-lt v0, v2, :cond_0

    .line 194
    return v6

    .line 185
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-lt v1, v2, :cond_1

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v3, v3, v1

    invoke-static {v2, v3, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v3, "cos-nonambig"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 189
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 188
    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 185
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public endContentModel([I)Z
    .locals 5
    .param p1, "currentState"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 155
    aget v1, p1, v3

    .line 157
    .local v1, "state":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/4 v4, -0x2

    if-ne v1, v4, :cond_2

    :cond_0
    move v2, v3

    .line 173
    :cond_1
    :goto_0
    return v2

    .line 163
    :cond_2
    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fHasOptionalContent:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_1

    .line 167
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v0, v4, :cond_1

    .line 169
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fIsOptionalElement:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_4

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    if-nez v4, :cond_4

    move v2, v3

    .line 170
    goto :goto_0

    .line 167
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 3
    .param p1, "elementName"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "subGroupHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "matchingDecl":Ljava/lang/Object;
    const/4 v0, 0x0

    .end local v1    # "matchingDecl":Ljava/lang/Object;
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-lt v0, v2, :cond_1

    .line 105
    :cond_0
    return-object v1

    .line 101
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v2, v0

    invoke-virtual {p2, p1, v2}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    .line 102
    .local v1, "matchingDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    if-nez v1, :cond_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTermName(I)Ljava/lang/String;
    .locals 1
    .param p1, "termId"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCompactedForUPA()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public occurenceInfo([I)[I
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 5
    .param p1, "elementName"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "currentState"    # [I
    .param p3, "subGroupHandler"    # Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    aget v2, p2, v3

    if-gez v2, :cond_0

    .line 119
    const/4 v2, -0x2

    aput v2, p2, v3

    .line 120
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    .line 124
    :cond_0
    aput v4, p2, v3

    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "matchingDecl":Ljava/lang/Object;
    const/4 v0, 0x0

    .end local v1    # "matchingDecl":Ljava/lang/Object;
    .local v0, "i":I
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-lt v0, v2, :cond_1

    .line 142
    const/4 v2, -0x1

    aput v2, p2, v3

    .line 143
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 131
    :cond_1
    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    if-eqz v2, :cond_3

    .line 128
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v2, v0

    invoke-virtual {p3, p1, v2}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    .line 134
    .local v1, "matchingDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    if-eqz v1, :cond_2

    .line 136
    add-int/lit8 v2, v0, 0x1

    aput v4, p2, v2

    goto :goto_0
.end method

.method public startContentModel()[I
    .locals 3

    .prologue
    .line 88
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 90
    .local v1, "state":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-le v0, v2, :cond_0

    .line 93
    return-object v1

    .line 91
    :cond_0
    const/4 v2, 0x0

    aput v2, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 3
    .param p1, "state"    # [I

    .prologue
    .line 207
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 208
    .local v1, "ret":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-lt v0, v2, :cond_0

    .line 214
    return-object v1

    .line 211
    :cond_0
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    if-nez v2, :cond_1

    .line 212
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 208
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
