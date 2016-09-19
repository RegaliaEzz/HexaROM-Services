.class public Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;
.super Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.source "XSCMLeaf.java"


# instance fields
.field private final fLeaf:Ljava/lang/Object;

.field private fParticleId:I

.field private fPosition:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "leaf"    # Ljava/lang/Object;
    .param p3, "id"    # I
    .param p4, "position"    # I

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    .line 44
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fParticleId:I

    .line 51
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fPosition:I

    .line 62
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fLeaf:Ljava/lang/Object;

    .line 63
    iput p3, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fParticleId:I

    .line 64
    iput p4, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fPosition:I

    .line 65
    return-void
.end method


# virtual methods
.method protected calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2
    .param p1, "toSet"    # Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .prologue
    .line 112
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fPosition:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setBit(I)V

    goto :goto_0
.end method

.method protected calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2
    .param p1, "toSet"    # Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .prologue
    .line 122
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 123
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fPosition:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setBit(I)V

    goto :goto_0
.end method

.method final getLeaf()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fLeaf:Ljava/lang/Object;

    return-object v0
.end method

.method final getParticleId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fParticleId:I

    return v0
.end method

.method final getPosition()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fPosition:I

    return v0
.end method

.method public isNullable()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setPosition(I)V
    .locals 0
    .param p1, "newPosition"    # I

    .prologue
    .line 84
    iput p1, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fPosition:I

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fLeaf:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "strRet":Ljava/lang/StringBuffer;
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fPosition:I

    if-ltz v1, :cond_0

    .line 101
    const-string v1, " (Pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 102
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->fPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 103
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
