.class public final Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;
.super Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;
.source "XMLNSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "NSContentDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V

    return-void
.end method

.method private reconfigurePipeline()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 751
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 752
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-boolean v3, v2, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->hasGrammar()Z

    move-result v2

    if-nez v2, :cond_0

    .line 755
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-boolean v3, v2, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    .line 756
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->validate()Z

    move-result v3

    iput-boolean v3, v2, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    .line 758
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v1

    .line 759
    .local v1, "source":Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    .line 760
    .local v0, "handler":Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 761
    if-eqz v0, :cond_2

    .line 762
    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 763
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 764
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_0
.end method


# virtual methods
.method protected scanRootElementHook()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc

    const/4 v0, 0x1

    .line 721
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-nez v1, :cond_1

    .line 722
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDisallowDoctype:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fValidation:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v1, :cond_1

    .line 723
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanStartElementName()V

    .line 724
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->resolveExternalSubsetAndRead()V

    .line 725
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->reconfigurePipeline()V

    .line 726
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanStartElementAfterName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 727
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setScannerState(I)V

    .line 728
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    .line 740
    :goto_0
    return v0

    .line 733
    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->reconfigurePipeline()V

    .line 734
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanStartElement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 735
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setScannerState(I)V

    .line 736
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    goto :goto_0

    .line 740
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
