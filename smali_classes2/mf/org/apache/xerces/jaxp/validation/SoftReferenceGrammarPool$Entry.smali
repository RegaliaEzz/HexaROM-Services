.class final Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
.super Ljava/lang/Object;
.source "SoftReferenceGrammarPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation


# instance fields
.field public bucket:I

.field public desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

.field public grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

.field public hash:I

.field public next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

.field public prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;


# direct methods
.method protected constructor <init>(IILmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/Grammar;Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .param p1, "hash"    # I
    .param p2, "bucket"    # I
    .param p3, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .param p4, "grammar"    # Lmf/org/apache/xerces/xni/grammars/Grammar;
    .param p5, "next"    # Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    .param p6, "queue"    # Ljava/lang/ref/ReferenceQueue;

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput p1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    .line 395
    iput p2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->bucket:I

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 397
    iput-object p5, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 398
    if-eqz p5, :cond_0

    .line 399
    iput-object p0, p5, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 401
    :cond_0
    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .line 402
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-direct {v0, p0, p4, p6}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;-><init>(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Lmf/org/apache/xerces/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    .line 403
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .line 409
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    .line 410
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->clear()V

    .line 412
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 414
    :cond_0
    return-void
.end method
