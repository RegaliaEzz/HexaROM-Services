.class public abstract Lmf/org/apache/xml/resolver/helpers/PublicId;
.super Ljava/lang/Object;
.source "PublicId.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeURN(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "urn"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, ""

    .line 113
    .local v0, "publicId":Ljava/lang/String;
    const-string v1, "urn:publicid:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v1, "%2F"

    const-string v2, "/"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, ":"

    const-string v2, "//"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, "%3A"

    const-string v2, ":"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, ";"

    const-string v2, "::"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v1, "+"

    const-string v2, " "

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v1, "%2B"

    const-string v2, "+"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "%23"

    const-string v2, "#"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v1, "%3F"

    const-string v2, "?"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "%27"

    const-string v2, "\'"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "%3B"

    const-string v2, ";"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v1, "%25"

    const-string v2, "%"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    .line 131
    .end local p0    # "urn":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static encodeURN(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "publicId"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p0}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "urn":Ljava/lang/String;
    const-string v1, "%"

    const-string v2, "%25"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, ";"

    const-string v2, "%3B"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "\'"

    const-string v2, "%27"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "?"

    const-string v2, "%3F"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "#"

    const-string v2, "%23"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "+"

    const-string v2, "%2B"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, " "

    const-string v2, "+"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "::"

    const-string v2, ";"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, ":"

    const-string v2, "%3A"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "//"

    const-string v2, ":"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "/"

    const-string v2, "%2F"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "urn:publicid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "publicId"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x20

    .line 58
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "normal":Ljava/lang/String;
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 60
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "pos":I
    if-gez v1, :cond_0

    .line 69
    return-object v0

    .line 66
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "oldStr"    # Ljava/lang/String;
    .param p2, "newStr"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v1, ""

    .line 143
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, "pos":I
    :goto_0
    if-gez v0, :cond_0

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 149
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 153
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
