.class public Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
.super Ljava/util/AbstractMap;
.source "XSNamedMapImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSNamedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;
    }
.end annotation


# static fields
.field public static final EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;


# instance fields
.field fArray:[Lmf/org/apache/xerces/xs/XSObject;

.field private fEntrySet:Ljava/util/Set;

.field fLength:I

.field final fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

.field final fNSNum:I

.field final fNamespaces:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    new-array v1, v2, [Lmf/org/apache/xerces/xs/XSObject;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;)V
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "map"    # Lmf/org/apache/xerces/util/SymbolHash;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 73
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 60
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 65
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    .line 74
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    .line 75
    new-array v0, v1, [Lmf/org/apache/xerces/util/SymbolHash;

    aput-object p2, v0, v2

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    .line 76
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    .line 77
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;I)V
    .locals 2
    .param p1, "namespaces"    # [Ljava/lang/String;
    .param p2, "maps"    # [Lmf/org/apache/xerces/util/SymbolHash;
    .param p3, "num"    # I

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 60
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 65
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    .line 87
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    .line 89
    iput p3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    .line 90
    return-void
.end method

.method public constructor <init>([Lmf/org/apache/xerces/xs/XSObject;I)V
    .locals 5
    .param p1, "array"    # [Lmf/org/apache/xerces/xs/XSObject;
    .param p2, "length"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 60
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 65
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    .line 99
    if-nez p2, :cond_0

    .line 100
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    .line 102
    iput v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    .line 103
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 104
    iput v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    aget-object v1, p1, v3

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    .line 111
    iput v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    .line 113
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 114
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    goto :goto_0
.end method

.method static isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "one"    # Ljava/lang/String;
    .param p1, "two"    # Ljava/lang/String;

    .prologue
    .line 197
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 8

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    if-nez v4, :cond_0

    .line 228
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->getLength()I

    move-result v2

    .line 229
    .local v2, "length":I
    new-array v0, v2, [Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

    .line 230
    .local v0, "entries":[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 235
    new-instance v4, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;

    invoke-direct {v4, p0, v2, v0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;-><init>(Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;I[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;)V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    .line 258
    .end local v0    # "entries":[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 231
    .restart local v0    # "entries":[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    .line 232
    .local v3, "xso":Lmf/org/apache/xerces/xs/XSObject;
    new-instance v4, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

    new-instance v5, Lmf/javax/xml/namespace/QName;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v3}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;-><init>(Lmf/javax/xml/namespace/QName;Lmf/org/apache/xerces/xs/XSObject;)V

    aput-object v4, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "entries":[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "xso":Lmf/org/apache/xerces/xs/XSObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 209
    instance-of v3, p1, Lmf/javax/xml/namespace/QName;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 210
    check-cast v1, Lmf/javax/xml/namespace/QName;

    .line 211
    .local v1, "name":Lmf/javax/xml/namespace/QName;
    invoke-virtual {v1}, Lmf/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "namespaceURI":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    const/4 v2, 0x0

    .line 215
    :cond_0
    invoke-virtual {v1}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "localPart":Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->itemByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    .line 218
    .end local v0    # "localPart":Ljava/lang/String;
    .end local v1    # "name":Lmf/javax/xml/namespace/QName;
    .end local v2    # "namespaceURI":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getLength()I
    .locals 3

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-lt v0, v1, :cond_1

    .line 129
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 126
    .restart local v0    # "i":I
    :cond_1
    :try_start_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized item(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    if-nez v2, :cond_0

    .line 182
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->getLength()I

    .line 183
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    new-array v2, v2, [Lmf/org/apache/xerces/xs/XSObject;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 184
    const/4 v1, 0x0

    .line 186
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-lt v0, v2, :cond_2

    .line 190
    .end local v0    # "i":I
    .end local v1    # "pos":I
    :cond_0
    if-ltz p1, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v2, :cond_3

    .line 191
    :cond_1
    const/4 v2, 0x0

    .line 193
    :goto_1
    monitor-exit p0

    return-object v2

    .line 187
    .restart local v0    # "i":I
    .restart local v1    # "pos":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    invoke-virtual {v2, v3, v1}, Lmf/org/apache/xerces/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    move-result v2

    add-int/2addr v1, v2

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "i":I
    .end local v1    # "pos":I
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v2, v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 180
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public itemByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSObject;
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-lt v0, v4, :cond_1

    .line 167
    :cond_0
    :goto_1
    return-object v3

    .line 149
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {p1, v4}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    if-eqz v4, :cond_2

    .line 153
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/XSObject;

    goto :goto_1

    .line 158
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    if-ge v1, v4, :cond_0

    .line 159
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v2, v4, v1

    .line 160
    .local v2, "ret":Lmf/org/apache/xerces/xs/XSObject;
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v2

    .line 161
    goto :goto_1

    .line 158
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 148
    .end local v1    # "j":I
    .end local v2    # "ret":Lmf/org/apache/xerces/xs/XSObject;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->getLength()I

    move-result v0

    return v0
.end method
