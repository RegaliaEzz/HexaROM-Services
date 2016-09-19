.class public Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
.super Ljava/util/AbstractList;
.source "XSObjectListImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSObjectList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x4

.field private static final EMPTY_ITERATOR:Ljava/util/ListIterator;

.field public static final EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;


# instance fields
.field private fArray:[Lmf/org/apache/xerces/xs/XSObject;

.field private fLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    new-array v1, v2, [Lmf/org/apache/xerces/xs/XSObject;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 44
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_ITERATOR:Ljava/util/ListIterator;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 79
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Lmf/org/apache/xerces/xs/XSObject;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 83
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    .line 84
    return-void
.end method

.method public constructor <init>([Lmf/org/apache/xerces/xs/XSObject;I)V
    .locals 1
    .param p1, "array"    # [Lmf/org/apache/xerces/xs/XSObject;
    .param p2, "length"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    .line 93
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 94
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    .line 95
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    return v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)[Lmf/org/apache/xerces/xs/XSObject;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    return-object v0
.end method

.method private containsNull()Z
    .locals 2

    .prologue
    .line 191
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 196
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 192
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 193
    const/4 v1, 0x1

    goto :goto_1

    .line 191
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private containsObject(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 182
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 187
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 183
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const/4 v1, 0x1

    goto :goto_1

    .line 182
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private listIterator0(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 178
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_ITERATOR:Ljava/util/ListIterator;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;-><init>(Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;I)V

    goto :goto_0
.end method

.method private toArray0([Ljava/lang/Object;)V
    .locals 3
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 219
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-lez v0, :cond_0

    .line 220
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :cond_0
    return-void
.end method


# virtual methods
.method public addXSObject(ILmf/org/apache/xerces/xs/XSObject;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "object"    # Lmf/org/apache/xerces/xs/XSObject;

    .prologue
    .line 140
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aput-object p2, v0, p1

    .line 141
    return-void
.end method

.method public addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V
    .locals 4
    .param p1, "object"    # Lmf/org/apache/xerces/xs/XSObject;

    .prologue
    const/4 v3, 0x0

    .line 131
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 132
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    add-int/lit8 v1, v1, 0x4

    new-array v0, v1, [Lmf/org/apache/xerces/xs/XSObject;

    .line 133
    .local v0, "temp":[Lmf/org/apache/xerces/xs/XSObject;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 136
    .end local v0    # "temp":[Lmf/org/apache/xerces/xs/XSObject;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    aput-object p1, v1, v2

    .line 137
    return-void
.end method

.method public clearXSObjectList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-lt v0, v1, :cond_0

    .line 126
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 127
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    .line 128
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aput-object v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 148
    if-nez p1, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->containsNull()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->containsObject(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 152
    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 153
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v0, v0, p1

    return-object v0

    .line 155
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
    .line 102
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    return v0
.end method

.method public item(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 115
    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 116
    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->listIterator0(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->listIterator0(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 171
    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->listIterator0(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0

    .line 174
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

.method public size()I
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 200
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 201
    .local v0, "a":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->toArray0([Ljava/lang/Object;)V

    .line 202
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 206
    array-length v2, p1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-ge v2, v3, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 208
    .local v0, "arrayClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 209
    .local v1, "componentType":Ljava/lang/Class;
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    .line 211
    .end local v0    # "arrayClass":Ljava/lang/Class;
    .end local v1    # "componentType":Ljava/lang/Class;
    .restart local p1    # "a":[Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->toArray0([Ljava/lang/Object;)V

    .line 212
    array-length v2, p1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-le v2, v3, :cond_1

    .line 213
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    const/4 v3, 0x0

    aput-object v3, p1, v2

    .line 215
    :cond_1
    return-object p1
.end method
