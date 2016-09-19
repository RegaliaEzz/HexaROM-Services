.class public final Lmf/org/apache/xerces/impl/xs/util/StringListImpl;
.super Ljava/util/AbstractList;
.source "StringListImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/StringList;


# static fields
.field public static final EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;


# instance fields
.field private final fArray:[Ljava/lang/String;

.field private final fLength:I

.field private final fVector:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    new-array v1, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1
    .param p1, "v"    # Ljava/util/Vector;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 52
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    .line 53
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    .line 55
    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 64
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    .line 65
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    .line 67
    return-void
.end method

.method private toArray0([Ljava/lang/Object;)V
    .locals 3
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 158
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 86
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 87
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    if-nez p1, :cond_4

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-lt v0, v2, :cond_3

    .line 101
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-ge v0, v2, :cond_2

    .line 97
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 119
    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-ge p1, v0, :cond_1

    .line 120
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 125
    :cond_1
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
    .line 74
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    return v0
.end method

.method public item(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 105
    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->getLength()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 136
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 137
    .local v0, "a":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->toArray0([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 142
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 154
    :goto_0
    return-object v2

    .line 145
    :cond_0
    array-length v2, p1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-ge v2, v3, :cond_1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 147
    .local v0, "arrayClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 148
    .local v1, "componentType":Ljava/lang/Class;
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    .line 150
    .end local v0    # "arrayClass":Ljava/lang/Class;
    .end local v1    # "componentType":Ljava/lang/Class;
    .restart local p1    # "a":[Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->toArray0([Ljava/lang/Object;)V

    .line 151
    array-length v2, p1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-le v2, v3, :cond_2

    .line 152
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    const/4 v3, 0x0

    aput-object v3, p1, v2

    :cond_2
    move-object v2, p1

    .line 154
    goto :goto_0
.end method
