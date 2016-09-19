.class public Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;
.super Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;
.source "XMLDTDDescription.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;


# instance fields
.field protected fPossibleRoots:Ljava/util/ArrayList;

.field protected fRootName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "literalId"    # Ljava/lang/String;
    .param p3, "baseId"    # Ljava/lang/String;
    .param p4, "expandedId"    # Ljava/lang/String;
    .param p5, "rootName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    .line 44
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-object p5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p2, "rootName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    .line 44
    iput-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 48
    iput-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 52
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {p0, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 55
    iput-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 4
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    .line 44
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p0, v0, v3, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 69
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "desc"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 115
    instance-of v5, p1, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    if-nez v5, :cond_0

    move v5, v6

    .line 167
    :goto_0
    return v5

    .line 116
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v7

    move-object v5, p1

    check-cast v5, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v5}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    .line 117
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 120
    check-cast v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    .line 121
    .local v0, "dtdDesc":Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 122
    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v6

    .line 126
    goto :goto_0

    .line 129
    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    .line 130
    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 131
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v6

    .line 132
    goto :goto_0

    .line 135
    :cond_4
    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    move v5, v6

    .line 136
    goto :goto_0

    .line 139
    :cond_5
    const/4 v1, 0x0

    .line 140
    .local v1, "found":Z
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 141
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v4, :cond_7

    .line 146
    :cond_6
    if-nez v1, :cond_8

    move v5, v6

    goto :goto_0

    .line 142
    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, "root":Ljava/lang/String;
    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 144
    if-nez v1, :cond_6

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v3    # "root":Ljava/lang/String;
    .end local v4    # "size":I
    :cond_8
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 152
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    move v5, v6

    .line 153
    goto/16 :goto_0

    .line 156
    :cond_9
    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v5, :cond_a

    move v5, v6

    .line 157
    goto/16 :goto_0

    .line 159
    :cond_a
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 160
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    move v5, v6

    .line 161
    goto/16 :goto_0

    .line 164
    :cond_b
    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    if-eqz v5, :cond_c

    move v5, v6

    .line 165
    goto/16 :goto_0

    .line 167
    :cond_c
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public getGrammarType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "http://www.w3.org/TR/REC-xml"

    return-object v0
.end method

.method public getRootName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 184
    :goto_0
    return v0

    .line 180
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPossibleRoots(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "possibleRoots"    # Ljava/util/ArrayList;

    .prologue
    .line 93
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method public setPossibleRoots(Ljava/util/Vector;)V
    .locals 1
    .param p1, "possibleRoots"    # Ljava/util/Vector;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRootName(Ljava/lang/String;)V
    .locals 1
    .param p1, "rootName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    .line 89
    return-void
.end method
