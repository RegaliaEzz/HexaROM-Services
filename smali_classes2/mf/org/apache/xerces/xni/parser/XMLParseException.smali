.class public Lmf/org/apache/xerces/xni/parser/XMLParseException;
.super Lmf/org/apache/xerces/xni/XNIException;
.source "XMLParseException.java"


# static fields
.field static final serialVersionUID:J = 0x180cb55b161e8a4fL


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fCharacterOffset:I

.field protected fColumnNumber:I

.field protected fExpandedSystemId:Ljava/lang/String;

.field protected fLineNumber:I

.field protected fLiteralSystemId:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V
    .locals 1
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 69
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    .line 55
    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    .line 58
    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    .line 61
    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    .line 72
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    .line 73
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    .line 74
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    .line 75
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    .line 76
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    .line 77
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    .line 79
    :cond_0
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, -0x1

    .line 84
    invoke-direct {p0, p2, p3}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 55
    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    .line 58
    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    .line 61
    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    .line 87
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    .line 88
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    .line 89
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    .line 90
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    .line 91
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    .line 92
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    return v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    return v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x3a

    .line 142
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 143
    .local v2, "str":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 148
    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 152
    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 156
    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    iget v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    iget v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    iget v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 167
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 168
    .local v0, "exception":Ljava/lang/Exception;
    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 172
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_4
    if-eqz v1, :cond_5

    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
