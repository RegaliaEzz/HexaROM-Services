.class public final Lmf/org/apache/xml/serialize/HTMLdtd;
.super Ljava/lang/Object;
.source "HTMLdtd.java"


# static fields
.field private static final ALLOWED_HEAD:I = 0x20

.field private static final CLOSE_DD_DT:I = 0x80

.field private static final CLOSE_P:I = 0x40

.field private static final CLOSE_SELF:I = 0x100

.field private static final CLOSE_TABLE:I = 0x200

.field private static final CLOSE_TH_TD:I = 0x4000

.field private static final ELEM_CONTENT:I = 0x2

.field private static final EMPTY:I = 0x11

.field private static final ENTITIES_RESOURCE:Ljava/lang/String; = "HTMLEntities.res"

.field public static final HTMLPublicId:Ljava/lang/String; = "-//W3C//DTD HTML 4.01//EN"

.field public static final HTMLSystemId:Ljava/lang/String; = "http://www.w3.org/TR/html4/strict.dtd"

.field private static final ONLY_OPENING:I = 0x1

.field private static final OPT_CLOSING:I = 0x8

.field private static final PRESERVE:I = 0x4

.field public static final XHTMLPublicId:Ljava/lang/String; = "-//W3C//DTD XHTML 1.0 Strict//EN"

.field public static final XHTMLSystemId:Ljava/lang/String; = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

.field private static _boolAttrs:Ljava/util/Hashtable;

.field private static _byChar:Ljava/util/Hashtable;

.field private static _byName:Ljava/util/Hashtable;

.field private static _elemDefs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x20a

    const/4 v4, 0x2

    const/16 v3, 0x11

    const/16 v2, 0x40

    .line 472
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    .line 473
    const-string v0, "ADDRESS"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 474
    const-string v0, "AREA"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 475
    const-string v0, "BASE"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 476
    const-string v0, "BASEFONT"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 477
    const-string v0, "BLOCKQUOTE"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 478
    const-string v0, "BODY"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 479
    const-string v0, "BR"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 480
    const-string v0, "COL"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 481
    const-string v0, "COLGROUP"

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 482
    const-string v0, "DD"

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 483
    const-string v0, "DIV"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 484
    const-string v0, "DL"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 485
    const-string v0, "DT"

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 486
    const-string v0, "FIELDSET"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 487
    const-string v0, "FORM"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 488
    const-string v0, "FRAME"

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 489
    const-string v0, "H1"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 490
    const-string v0, "H2"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 491
    const-string v0, "H3"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 492
    const-string v0, "H4"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 493
    const-string v0, "H5"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 494
    const-string v0, "H6"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 495
    const-string v0, "HEAD"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 496
    const-string v0, "HR"

    const/16 v1, 0x51

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 497
    const-string v0, "HTML"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 498
    const-string v0, "IMG"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 499
    const-string v0, "INPUT"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 500
    const-string v0, "ISINDEX"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 501
    const-string v0, "LI"

    const/16 v1, 0x109

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 502
    const-string v0, "LINK"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 503
    const-string v0, "MAP"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 504
    const-string v0, "META"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 505
    const-string v0, "OL"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 506
    const-string v0, "OPTGROUP"

    invoke-static {v0, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 507
    const-string v0, "OPTION"

    const/16 v1, 0x109

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 508
    const-string v0, "P"

    const/16 v1, 0x148

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 509
    const-string v0, "PARAM"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 510
    const-string v0, "PRE"

    const/16 v1, 0x44

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 511
    const-string v0, "SCRIPT"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 512
    const-string v0, "NOSCRIPT"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 513
    const-string v0, "SELECT"

    invoke-static {v0, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 514
    const-string v0, "STYLE"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 515
    const-string v0, "TABLE"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 516
    const-string v0, "TBODY"

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 517
    const-string v0, "TD"

    const/16 v1, 0x4008

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 518
    const-string v0, "TEXTAREA"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 519
    const-string v0, "TFOOT"

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 520
    const-string v0, "TH"

    const/16 v1, 0x4008

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 521
    const-string v0, "THEAD"

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 522
    const-string v0, "TITLE"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 523
    const-string v0, "TR"

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 524
    const-string v0, "UL"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 526
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    .line 527
    const-string v0, "AREA"

    const-string v1, "href"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "BUTTON"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v0, "DIR"

    const-string v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v0, "DL"

    const-string v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v0, "FRAME"

    const-string v1, "noresize"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v0, "HR"

    const-string v1, "noshade"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v0, "IMAGE"

    const-string v1, "ismap"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v0, "INPUT"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "defaultchecked"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string v3, "checked"

    aput-object v3, v1, v2

    const-string v2, "readonly"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const-string v3, "disabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    .line 535
    const-string v0, "LINK"

    const-string v1, "link"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v0, "MENU"

    const-string v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v0, "OBJECT"

    const-string v1, "declare"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v0, "OL"

    const-string v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "OPTGROUP"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v0, "OPTION"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "default-selected"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string v3, "selected"

    aput-object v3, v1, v2

    const-string v2, "disabled"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    .line 541
    const-string v0, "SCRIPT"

    const-string v1, "defer"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v0, "SELECT"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "multiple"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string v3, "disabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    .line 543
    const-string v0, "STYLE"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "TD"

    const-string v1, "nowrap"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v0, "TH"

    const-string v1, "nowrap"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "TEXTAREA"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "disabled"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string v3, "readonly"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    .line 547
    const-string v0, "UL"

    const-string v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lmf/org/apache/xml/serialize/HTMLdtd;->initialize()V

    .line 550
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charFromName(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-static {}, Lmf/org/apache/xml/serialize/HTMLdtd;->initialize()V

    .line 323
    sget-object v1, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 325
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 327
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static defineBoolean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    .line 448
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method private static defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "attrNames"    # [Ljava/lang/String;

    .prologue
    .line 454
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    return-void
.end method

.method private static defineElement(Ljava/lang/String;I)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 442
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-void
.end method

.method private static defineEntity(Ljava/lang/String;C)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # C

    .prologue
    .line 433
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 434
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_0
    return-void
.end method

.method public static fromChar(I)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 341
    const v1, 0xffff

    if-le p0, v1, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 348
    :goto_0
    return-object v0

    .line 346
    :cond_0
    invoke-static {}, Lmf/org/apache/xml/serialize/HTMLdtd;->initialize()V

    .line 347
    sget-object v1, Lmf/org/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    .local v0, "name":Ljava/lang/String;
    goto :goto_0
.end method

.method private static initialize()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    .line 360
    const/4 v3, 0x0

    .line 361
    .local v3, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 369
    .local v6, "reader":Ljava/io/BufferedReader;
    sget-object v9, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    if-eqz v9, :cond_0

    .line 416
    :goto_0
    return-void

    .line 372
    :cond_0
    :try_start_0
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    sput-object v9, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    .line 373
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    sput-object v9, Lmf/org/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    .line 374
    const-class v9, Lmf/org/apache/xml/serialize/HTMLdtd;

    const-string v10, "HTMLEntities.res"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 375
    if-nez v3, :cond_2

    .line 376
    new-instance v9, Ljava/lang/RuntimeException;

    .line 378
    const-string v10, "http://apache.org/xml/serializer"

    .line 379
    const-string v11, "ResourceNotFound"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "HTMLEntities.res"

    aput-object v14, v12, v13

    .line 377
    invoke-static {v10, v11, v12}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 376
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, "except":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    new-instance v9, Ljava/lang/RuntimeException;

    .line 407
    const-string v10, "http://apache.org/xml/serializer"

    .line 408
    const-string v11, "ResourceNotLoaded"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "HTMLEntities.res"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 406
    invoke-static {v10, v11, v12}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 405
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    .end local v1    # "except":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 410
    :goto_2
    if-eqz v3, :cond_1

    .line 412
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 415
    :cond_1
    :goto_3
    throw v9

    .line 381
    :cond_2
    :try_start_3
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "ASCII"

    invoke-direct {v9, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 382
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, "line":Ljava/lang/String;
    :goto_4
    if-nez v4, :cond_4

    .line 403
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 410
    if-eqz v3, :cond_3

    .line 412
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_5
    move-object v6, v7

    .line 416
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 384
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-ne v9, v10, :cond_6

    .line 385
    :cond_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 386
    goto :goto_4

    .line 388
    :cond_6
    const/16 v9, 0x20

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 389
    .local v2, "index":I
    if-le v2, v11, :cond_8

    .line 390
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 391
    .local v5, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 392
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_8

    .line 393
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 394
    .local v8, "value":Ljava/lang/String;
    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 395
    if-lez v2, :cond_7

    .line 396
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 397
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 398
    .local v0, "code":I
    int-to-char v9, v0

    invoke-static {v5, v9}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineEntity(Ljava/lang/String;C)V

    .line 401
    .end local v0    # "code":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v4

    goto :goto_4

    .line 413
    .end local v2    # "index":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v10

    goto :goto_3

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v9

    goto :goto_5

    .line 409
    .end local v4    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 404
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method public static isBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 300
    sget-object v3, Lmf/org/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 301
    .local v0, "attrNames":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v2

    .line 303
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 304
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    const/4 v2, 0x1

    goto :goto_0

    .line 303
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isClosing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "openTag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 250
    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    const/16 v1, 0x20

    invoke-static {p0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 253
    :cond_2
    const-string v1, "P"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    const/16 v0, 0x40

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 256
    :cond_3
    const-string v1, "DT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "DD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 257
    :cond_4
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 259
    :cond_5
    const-string v1, "LI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "OPTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 260
    :cond_6
    const/16 v0, 0x100

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 262
    :cond_7
    const-string v1, "THEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "TFOOT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 263
    const-string v1, "TBODY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "TR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 264
    const-string v1, "COLGROUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 265
    :cond_8
    const/16 v0, 0x200

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 267
    :cond_9
    const-string v1, "TH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "TD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    :cond_a
    const/16 v0, 0x4000

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private static isElement(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 462
    sget-object v2, Lmf/org/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 463
    .local v0, "flags":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isElementContent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isEmptyTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 178
    const/16 v0, 0x11

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isOnlyOpening(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isOptionalClosing(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 220
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isPreserveSpace(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isURI(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    .line 284
    const-string v0, "href"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
