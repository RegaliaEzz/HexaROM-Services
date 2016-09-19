.class public final Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;
.super Ljava/util/AbstractList;
.source "ObjectListImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/ObjectList;


# static fields
.field public static final EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;


# instance fields
.field private final fArray:[Ljava/lang/Object;

.field private final fLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "length"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 46
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fArray:[Ljava/lang/Object;

    .line 47
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    .line 48
    return-void
.end method

.method private toArray0([Ljava/lang/Object;)V
    .locals 3
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 111
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fArray:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 55
    if-nez p1, :cond_3

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-lt v0, v2, :cond_2

    .line 67
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1

    .line 57
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-ge v0, v2, :cond_0

    .line 63
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 81
    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    return v0
.end method

.method public item(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 71
    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->getLength()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 92
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 93
    .local v0, "a":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->toArray0([Ljava/lang/Object;)V

    .line 94
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 98
    array-length v2, p1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-ge v2, v3, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 100
    .local v0, "arrayClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 101
    .local v1, "componentType":Ljava/lang/Class;
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    .line 103
    .end local v0    # "arrayClass":Ljava/lang/Class;
    .end local v1    # "componentType":Ljava/lang/Class;
    .restart local p1    # "a":[Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->toArray0([Ljava/lang/Object;)V

    .line 104
    array-length v2, p1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-le v2, v3, :cond_1

    .line 105
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    const/4 v3, 0x0

    aput-object v3, p1, v2

    .line 107
    :cond_1
    return-object p1
.end method
