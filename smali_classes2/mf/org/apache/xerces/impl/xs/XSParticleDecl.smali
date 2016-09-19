.class public Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
.super Ljava/lang/Object;
.source "XSParticleDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSParticle;


# static fields
.field public static final PARTICLE_ELEMENT:S = 0x1s

.field public static final PARTICLE_EMPTY:S = 0x0s

.field public static final PARTICLE_MODELGROUP:S = 0x3s

.field public static final PARTICLE_ONE_OR_MORE:S = 0x6s

.field public static final PARTICLE_WILDCARD:S = 0x2s

.field public static final PARTICLE_ZERO_OR_MORE:S = 0x4s

.field public static final PARTICLE_ZERO_OR_ONE:S = 0x5s


# instance fields
.field public fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fDescription:Ljava/lang/String;

.field public fMaxOccurs:I

.field public fMinOccurs:I

.field public fType:S

.field public fValue:Lmf/org/apache/xerces/xs/XSTerm;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 55
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 58
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 60
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 62
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 129
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method appendParticle(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 153
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 155
    :pswitch_0
    const-string v0, "EMPTY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 161
    :pswitch_2
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 166
    :pswitch_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public emptiable()Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v0

    if-nez v0, :cond_0

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
    .line 243
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getMaxOccurs()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    return v0
.end method

.method public getMaxOccursUnbounded()Z
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinOccurs()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTerm()Lmf/org/apache/xerces/xs/XSTerm;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    return-object v0
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x8

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 86
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return v0

    .line 88
    :cond_0
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-eq v1, v0, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public makeClone()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 67
    .local v0, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 68
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 69
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 70
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 72
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 73
    return-object v0
.end method

.method public maxEffectiveTotalRange()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 112
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-nez v1, :cond_0

    .line 113
    const/4 v1, 0x0

    .line 123
    :goto_0
    return v1

    .line 115
    :cond_0
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 116
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->maxEffectiveTotalRange()I

    move-result v0

    .line 117
    .local v0, "max":I
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-ne v1, v2, :cond_2

    move v1, v2

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    mul-int/2addr v1, v0

    goto :goto_0

    .line 123
    .end local v0    # "max":I
    :cond_3
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    goto :goto_0
.end method

.method public minEffectiveTotalRange()I
    .locals 2

    .prologue
    .line 102
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 106
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->minEffectiveTotalRange()I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    mul-int/2addr v0, v1

    goto :goto_0

    .line 108
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    const/4 v0, 0x0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 173
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 174
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 175
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 176
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 178
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 131
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->appendParticle(Ljava/lang/StringBuffer;)V

    .line 134
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-eqz v1, :cond_3

    .line 135
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-eq v1, v2, :cond_3

    .line 136
    :cond_1
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 137
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 138
    const-string v1, "-UNBOUNDED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_2
    :goto_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    .line 145
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    return-object v1

    .line 139
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_5
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-eq v1, v2, :cond_2

    .line 140
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
