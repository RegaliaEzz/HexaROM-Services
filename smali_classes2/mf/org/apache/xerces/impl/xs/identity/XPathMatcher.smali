.class public Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
.super Ljava/lang/Object;
.source "XPathMatcher.java"


# static fields
.field protected static final DEBUG_ALL:Z = false

.field protected static final DEBUG_ANY:Z = false

.field protected static final DEBUG_MATCH:Z = false

.field protected static final DEBUG_METHODS:Z = false

.field protected static final DEBUG_METHODS2:Z = false

.field protected static final DEBUG_METHODS3:Z = false

.field protected static final DEBUG_STACK:Z = false

.field protected static final MATCHED:I = 0x1

.field protected static final MATCHED_ATTRIBUTE:I = 0x3

.field protected static final MATCHED_DESCENDANT:I = 0x5

.field protected static final MATCHED_DESCENDANT_PREVIOUS:I = 0xd


# instance fields
.field private final fCurrentStep:[I

.field private final fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

.field private final fMatched:[I

.field protected fMatchedString:Ljava/lang/Object;

.field private final fNoMatchDepth:[I

.field final fQName:Lmf/org/apache/xerces/xni/QName;

.field private final fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xpath/XPath;)V
    .locals 3
    .param p1, "xpath"    # Lmf/org/apache/xerces/impl/xpath/XPath;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fQName:Lmf/org/apache/xerces/xni/QName;

    .line 123
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->getLocationPaths()[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    .line 124
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v1, v1

    new-array v1, v1, [Lmf/org/apache/xerces/util/IntStack;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    .line 127
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    .line 128
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    .line 129
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    new-instance v2, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static matches(Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;Lmf/org/apache/xerces/xni/QName;)Z
    .locals 3
    .param p0, "nodeTest"    # Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    .param p1, "value"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    const/4 v0, 0x1

    .line 474
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    if-ne v1, v0, :cond_1

    .line 475
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 481
    :cond_0
    :goto_0
    return v0

    .line 477
    :cond_1
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 478
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 455
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 456
    .local v3, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 457
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 469
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 458
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 459
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 465
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 457
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :pswitch_0
    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 459
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 9
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p3, "nillable"    # Z
    .param p4, "value"    # Ljava/lang/Object;
    .param p5, "valueType"    # S
    .param p6, "itemValueType"    # Lmf/org/apache/xerces/xs/ShortList;

    .prologue
    const/4 v8, 0x0

    .line 377
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 410
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v1

    aput v1, v0, v6

    .line 382
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v0, v0, v6

    if-lez v0, :cond_2

    .line 383
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v1, v0, v6

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v6

    .line 377
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 388
    :cond_2
    const/4 v7, 0x0

    .line 389
    .local v7, "j":I
    :goto_2
    if-ge v7, v6, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v0, v0, v7

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 390
    :cond_3
    if-lt v7, v6, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v0, v0, v7

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v0, v0, v7

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 394
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v8, v0, v6

    goto :goto_1

    .line 389
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    .line 401
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->handleContent(Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    .line 402
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v8, v0, v6

    goto :goto_1
.end method

.method protected handleContent(Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 0
    .param p1, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "nillable"    # Z
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "valueType"    # S
    .param p5, "itemValueType"    # Lmf/org/apache/xerces/xs/ShortList;

    .prologue
    .line 158
    return-void
.end method

.method public isMatched()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 148
    const/4 v1, 0x0

    :cond_0
    return v1

    .line 142
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_2

    .line 143
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0xd

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    .line 144
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 141
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V
    .locals 0
    .param p1, "actualValue"    # Ljava/lang/Object;
    .param p2, "valueType"    # S
    .param p3, "itemValueType"    # Lmf/org/apache/xerces/xs/ShortList;
    .param p4, "isNil"    # Z

    .prologue
    .line 169
    return-void
.end method

.method public startDocumentFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatchedString:Ljava/lang/Object;

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 194
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->clear()V

    .line 188
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aput v2, v1, v0

    .line 189
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aput v2, v1, v0

    .line 190
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v2, v1, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 16
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    .line 214
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v12, v12

    if-lt v5, v12, :cond_0

    .line 354
    return-void

    .line 216
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v9, v12, v5

    .line 217
    .local v9, "startStep":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    aget-object v12, v12, v5

    invoke-virtual {v12, v9}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v12, v12, v5

    and-int/lit8 v12, v12, 0x5

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v12, v12, v5

    if-lez v12, :cond_3

    .line 221
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    .line 214
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 224
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v12, v12, v5

    and-int/lit8 v12, v12, 0x5

    const/4 v13, 0x5

    if-ne v12, v13, :cond_4

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    const/16 v13, 0xd

    aput v13, v12, v5

    .line 233
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v12, v12, v5

    iget-object v11, v12, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    .line 234
    .local v11, "steps":[Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ge v12, v13, :cond_5

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    aget-object v12, v11, v12

    iget-object v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v13, 0x3

    if-eq v12, v13, :cond_6

    .line 242
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ne v12, v13, :cond_7

    .line 246
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    const/4 v13, 0x1

    aput v13, v12, v5

    goto :goto_1

    .line 240
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    goto :goto_2

    .line 254
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v4, v12, v5

    .line 255
    .local v4, "descendantStep":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ge v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    aget-object v12, v11, v12

    iget-object v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v13, 0x4

    if-eq v12, v13, :cond_9

    .line 262
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    if-le v12, v4, :cond_a

    const/4 v8, 0x1

    .line 263
    .local v8, "sawDescendant":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ne v12, v13, :cond_b

    .line 267
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    goto/16 :goto_1

    .line 260
    .end local v8    # "sawDescendant":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    goto :goto_3

    .line 262
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .line 275
    .restart local v8    # "sawDescendant":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    if-eq v12, v9, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    if-le v12, v4, :cond_f

    .line 276
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    aget-object v12, v11, v12

    iget-object v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    aget-object v10, v11, v12

    .line 278
    .local v10, "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    iget-object v7, v10, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->nodeTest:Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    .line 282
    .local v7, "nodeTest":Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    move-object/from16 v0, p1

    invoke-static {v7, v0}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->matches(Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;Lmf/org/apache/xerces/xni/QName;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 283
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    if-le v12, v4, :cond_d

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aput v4, v12, v5

    goto/16 :goto_1

    .line 287
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    goto/16 :goto_1

    .line 293
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    .line 298
    .end local v7    # "nodeTest":Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    .end local v10    # "step":Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ne v12, v13, :cond_11

    .line 299
    if-eqz v8, :cond_10

    .line 300
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aput v4, v12, v5

    .line 301
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    const/4 v13, 0x5

    aput v13, v12, v5

    goto/16 :goto_1

    .line 304
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    const/4 v13, 0x1

    aput v13, v12, v5

    goto/16 :goto_1

    .line 310
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ge v12, v13, :cond_2

    .line 311
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    aget-object v12, v11, v12

    iget-object v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 315
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v2

    .line 316
    .local v2, "attrCount":I
    if-lez v2, :cond_12

    .line 317
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    aget-object v12, v11, v12

    iget-object v7, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->nodeTest:Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    .line 319
    .restart local v7    # "nodeTest":Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    const/4 v1, 0x0

    .local v1, "aIndex":I
    :goto_5
    if-lt v1, v2, :cond_13

    .line 337
    .end local v1    # "aIndex":I
    .end local v7    # "nodeTest":Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v12, v12, v5

    and-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    .line 338
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    if-le v12, v4, :cond_17

    .line 339
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aput v4, v12, v5

    goto/16 :goto_1

    .line 320
    .restart local v1    # "aIndex":I
    .restart local v7    # "nodeTest":Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-static {v7, v12}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->matches(Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;Lmf/org/apache/xerces/xni/QName;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 322
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ne v12, v13, :cond_12

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    const/4 v13, 0x3

    aput v13, v12, v5

    .line 325
    const/4 v6, 0x0

    .line 326
    .local v6, "j":I
    :goto_7
    if-ge v6, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v12, v12, v6

    and-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_15

    .line 327
    :cond_14
    if-ne v6, v5, :cond_12

    .line 328
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v12

    const-string v13, "ATTRIBUTE_PSVI"

    invoke-interface {v12, v13}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/AttributePSVI;

    .line 329
    .local v3, "attrPSVI":Lmf/org/apache/xerces/xs/AttributePSVI;
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getActualNormalizedValue()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatchedString:Ljava/lang/Object;

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatchedString:Ljava/lang/Object;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getActualNormalizedValueType()S

    move-result v13

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V

    goto :goto_6

    .line 326
    .end local v3    # "attrPSVI":Lmf/org/apache/xerces/xs/AttributePSVI;
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 319
    .end local v6    # "j":I
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 342
    .end local v1    # "aIndex":I
    .end local v7    # "nodeTest":Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x5e

    .line 421
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 422
    .local v5, "str":Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "s":Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 424
    .local v1, "index2":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 425
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 427
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v6, v6

    if-lt v0, v6, :cond_1

    .line 446
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 429
    :cond_1
    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 430
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v6, v6, v0

    iget-object v4, v6, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    .line 431
    .local v4, "steps":[Lmf/org/apache/xerces/impl/xpath/XPath$Step;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v6, v4

    if-lt v2, v6, :cond_3

    .line 440
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v6, v6, v0

    array-length v7, v4

    if-ne v6, v7, :cond_2

    .line 441
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 443
    :cond_2
    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 444
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v6, v6, v0

    if-ne v2, v6, :cond_4

    .line 433
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 435
    :cond_4
    aget-object v6, v4, v2

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_5

    .line 437
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 431
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
