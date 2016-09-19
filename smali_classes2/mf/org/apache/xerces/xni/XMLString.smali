.class public Lmf/org/apache/xerces/xni/XMLString;
.super Ljava/lang/Object;
.source "XMLString.java"


# instance fields
.field public ch:[C

.field public length:I

.field public offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 0
    .param p1, "string"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 90
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 77
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 128
    return-void
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 161
    if-nez p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 164
    :cond_1
    iget v2, p0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lt v0, v2, :cond_2

    .line 177
    const/4 v1, 0x1

    goto :goto_0

    .line 172
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public equals([CII)Z
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 139
    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    iget v2, p0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-ne v2, p3, :cond_0

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, p3, :cond_2

    .line 151
    const/4 v1, 0x1

    goto :goto_0

    .line 147
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    add-int v3, p2, v0

    aget-char v3, p1, v3

    if-ne v2, v3, :cond_0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setValues(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 3
    .param p1, "s"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    .line 120
    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 121
    return-void
.end method

.method public setValues([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 105
    iput-object p1, p0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    .line 106
    iput p2, p0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 107
    iput p3, p0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    iget v0, p0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v2, p0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v3, p0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
