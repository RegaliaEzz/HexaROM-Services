.class public Lmf/org/apache/xml/resolver/CatalogEntry;
.super Ljava/lang/Object;
.source "CatalogEntry.java"


# static fields
.field protected static entryArgs:Ljava/util/Vector;

.field protected static entryTypes:Ljava/util/Hashtable;

.field protected static nextEntry:I


# instance fields
.field protected args:Ljava/util/Vector;

.field protected entryType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lmf/org/apache/xml/resolver/CatalogEntry;->nextEntry:I

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryType:I

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    .line 147
    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "args"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v2, 0x0

    iput v2, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryType:I

    .line 142
    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    .line 195
    :try_start_0
    sget-object v2, Lmf/org/apache/xml/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 196
    .local v1, "iArgs":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 197
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "iArgs":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v2

    .line 203
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v1    # "iArgs":Ljava/lang/Integer;
    :cond_0
    iput p1, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryType:I

    .line 204
    iput-object p2, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v4, 0x0

    iput v4, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryType:I

    .line 142
    const/4 v4, 0x0

    iput-object v4, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    .line 161
    sget-object v4, Lmf/org/apache/xml/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 163
    .local v2, "iType":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 164
    new-instance v4, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v4, v6}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v4

    .line 167
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 170
    .local v3, "type":I
    :try_start_0
    sget-object v4, Lmf/org/apache/xml/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 171
    .local v1, "iArgs":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 172
    new-instance v4, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "iArgs":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v4, v6}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v4

    .line 178
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v1    # "iArgs":Ljava/lang/Integer;
    :cond_1
    iput v3, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryType:I

    .line 179
    iput-object p2, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    .line 180
    return-void
.end method

.method public static addEntryType(Ljava/lang/String;I)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "numArgs"    # I

    .prologue
    .line 78
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    sget v2, Lmf/org/apache/xml/resolver/CatalogEntry;->nextEntry:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    sget v1, Lmf/org/apache/xml/resolver/CatalogEntry;->nextEntry:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 80
    sget v0, Lmf/org/apache/xml/resolver/CatalogEntry;->nextEntry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xml/resolver/CatalogEntry;->nextEntry:I

    .line 82
    sget v0, Lmf/org/apache/xml/resolver/CatalogEntry;->nextEntry:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static getEntryArgCount(I)I
    .locals 4
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    sget-object v2, Lmf/org/apache/xml/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 132
    .local v1, "iArgs":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 133
    .end local v1    # "iArgs":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v2
.end method

.method public static getEntryArgCount(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArgCount(I)I

    move-result v0

    return v0
.end method

.method public static getEntryType(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 95
    sget-object v1, Lmf/org/apache/xml/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v1, v2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v1

    .line 99
    :cond_0
    sget-object v1, Lmf/org/apache/xml/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 101
    .local v0, "iType":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 102
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v1, v2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v1

    .line 105
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public getEntryArg(I)Ljava/lang/String;
    .locals 3
    .param p1, "argNum"    # I

    .prologue
    .line 225
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-object v0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntryType()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->entryType:I

    return v0
.end method

.method public setEntryArg(ILjava/lang/String;)V
    .locals 1
    .param p1, "argNum"    # I
    .param p2, "newspec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogEntry;->args:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-void
.end method
