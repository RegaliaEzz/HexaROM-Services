.class public Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;
.super Ljava/lang/Object;
.source "XMLResourceIdentifierImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLResourceIdentifier;


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fExpandedSystemId:Ljava/lang/String;

.field protected fLiteralSystemId:Ljava/lang/String;

.field protected fNamespace:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "literalSystemId"    # Ljava/lang/String;
    .param p3, "baseSystemId"    # Ljava/lang/String;
    .param p4, "expandedSystemId"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 71
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "literalSystemId"    # Ljava/lang/String;
    .param p3, "baseSystemId"    # Ljava/lang/String;
    .param p4, "expandedSystemId"    # Ljava/lang/String;
    .param p5, "namespace"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual/range {p0 .. p5}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "code":I
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 195
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 198
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_4
    return v0
.end method

.method public setBaseSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseSystemId"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setExpandedSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "expandedSystemId"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setLiteralSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "literalSystemId"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "literalSystemId"    # Ljava/lang/String;
    .param p3, "baseSystemId"    # Ljava/lang/String;
    .param p4, "expandedSystemId"    # Ljava/lang/String;

    .prologue
    .line 98
    .line 99
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 98
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "literalSystemId"    # Ljava/lang/String;
    .param p3, "baseSystemId"    # Ljava/lang/String;
    .param p4, "expandedSystemId"    # Ljava/lang/String;
    .param p5, "namespace"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    .line 110
    iput-object p5, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 205
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    .local v0, "str":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 210
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 214
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 218
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 219
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 223
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
