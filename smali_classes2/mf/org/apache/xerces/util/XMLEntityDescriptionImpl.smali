.class public Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;
.super Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;
.source "XMLEntityDescriptionImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/XMLEntityDescription;


# instance fields
.field protected fEntityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "literalSystemId"    # Ljava/lang/String;
    .param p4, "baseSystemId"    # Ljava/lang/String;
    .param p5, "expandedSystemId"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    .line 52
    invoke-virtual/range {p0 .. p5}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "literalSystemId"    # Ljava/lang/String;
    .param p4, "baseSystemId"    # Ljava/lang/String;
    .param p5, "expandedSystemId"    # Ljava/lang/String;
    .param p6, "namespace"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    .line 67
    invoke-virtual/range {p0 .. p6}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->hashCode()I

    move-result v0

    .line 144
    .local v0, "code":I
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    :cond_0
    return v0
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "literalSystemId"    # Ljava/lang/String;
    .param p4, "baseSystemId"    # Ljava/lang/String;
    .param p5, "expandedSystemId"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "literalSystemId"    # Ljava/lang/String;
    .param p4, "baseSystemId"    # Ljava/lang/String;
    .param p5, "expandedSystemId"    # Ljava/lang/String;
    .param p6, "namespace"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 126
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 152
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v0, "str":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fPublicId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fLiteralSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fBaseSystemId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 166
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fBaseSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 170
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 173
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fNamespace:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 174
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
