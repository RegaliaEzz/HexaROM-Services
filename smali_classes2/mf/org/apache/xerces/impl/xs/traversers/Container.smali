.class abstract Lmf/org/apache/xerces/impl/xs/traversers/Container;
.super Ljava/lang/Object;
.source "XSAttributeChecker.java"


# static fields
.field static final THRESHOLD:I = 0x5


# instance fields
.field pos:I

.field values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1749
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/Container;->pos:I

    .line 1737
    return-void
.end method

.method static getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 1740
    const/4 v0, 0x5

    if-le p0, v0, :cond_0

    .line 1741
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;-><init>(I)V

    .line 1743
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/traversers/SmallContainer;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method abstract get(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
.end method

.method abstract put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V
.end method
