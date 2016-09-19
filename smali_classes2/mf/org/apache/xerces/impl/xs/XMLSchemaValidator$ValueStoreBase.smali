.class public abstract Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/identity/ValueStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ValueStoreBase"
.end annotation


# instance fields
.field protected fFieldCount:I

.field protected fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

.field protected fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

.field private fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

.field public fItemValueTypes:Ljava/util/Vector;

.field private fItemValueTypesLength:I

.field protected fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

.field protected fLocalValueTypes:[S

.field protected fLocalValues:[Ljava/lang/Object;

.field final fTempBuffer:Ljava/lang/StringBuffer;

.field private fUseItemValueTypeVector:Z

.field private fUseValueTypeVector:Z

.field private fValueType:S

.field public fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

.field private fValueTypesLength:I

.field public final fValues:Ljava/util/Vector;

.field protected fValuesCount:I

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 4
    .param p2, "identityConstraint"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3728
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3697
    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    .line 3698
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    .line 3700
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    .line 3701
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    .line 3702
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    .line 3708
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    .line 3709
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    .line 3710
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    .line 3712
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    .line 3713
    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    .line 3714
    iput-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    .line 3716
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    .line 3717
    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    .line 3718
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    .line 3721
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    .line 3729
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .line 3730
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    .line 3731
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/identity/Field;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    .line 3732
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    .line 3733
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v1, v1, [S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    .line 3734
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v1, v1, [Lmf/org/apache/xerces/xs/ShortList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    .line 3735
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v0, v1, :cond_0

    .line 3738
    return-void

    .line 3736
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldAt(I)Lmf/org/apache/xerces/impl/xs/identity/Field;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addItemValueType(Lmf/org/apache/xerces/xs/ShortList;)V
    .locals 3
    .param p1, "itemValueType"    # Lmf/org/apache/xerces/xs/ShortList;

    .prologue
    .line 4087
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-eqz v1, :cond_1

    .line 4088
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4104
    :cond_0
    :goto_0
    return-void

    .line 4090
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    if-nez v1, :cond_2

    .line 4091
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0

    .line 4093
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-eq v1, p1, :cond_0

    .line 4094
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4095
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    .line 4096
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    if-nez v1, :cond_4

    .line 4097
    new-instance v1, Ljava/util/Vector;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    .line 4099
    :cond_4
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    if-lt v0, v1, :cond_5

    .line 4102
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4100
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4099
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private addValueType(S)V
    .locals 3
    .param p1, "type"    # S

    .prologue
    .line 4054
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-eqz v1, :cond_1

    .line 4055
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    .line 4070
    :cond_0
    :goto_0
    return-void

    .line 4057
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    if-nez v1, :cond_2

    .line 4058
    iput-short p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    goto :goto_0

    .line 4060
    :cond_2
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    if-eq v1, p1, :cond_0

    .line 4061
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    .line 4062
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    if-nez v1, :cond_3

    .line 4063
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    .line 4065
    :cond_3
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    if-lt v0, v1, :cond_4

    .line 4068
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    goto :goto_0

    .line 4066
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    .line 4065
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4107
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-eqz v0, :cond_0

    .line 4108
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/ShortList;

    .line 4110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0
.end method

.method private getValueTypeAt(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4073
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-eqz v0, :cond_0

    .line 4074
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->valueAt(I)S

    move-result v0

    .line 4076
    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    goto :goto_0
.end method

.method private itemValueTypeContains(Lmf/org/apache/xerces/xs/ShortList;)Z
    .locals 1
    .param p1, "value"    # Lmf/org/apache/xerces/xs/ShortList;

    .prologue
    .line 4114
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-eqz v0, :cond_0

    .line 4115
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-eq v0, p1, :cond_2

    .line 4118
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private valueTypeContains(S)Z
    .locals 1
    .param p1, "value"    # S

    .prologue
    .line 4080
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-eqz v0, :cond_0

    .line 4081
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->contains(S)Z

    move-result v0

    .line 4083
    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addValue(Lmf/org/apache/xerces/impl/xs/identity/Field;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 10
    .param p1, "field"    # Lmf/org/apache/xerces/impl/xs/identity/Field;
    .param p2, "mayMatch"    # Z
    .param p3, "actualValue"    # Ljava/lang/Object;
    .param p4, "valueType"    # S
    .param p5, "itemValueType"    # Lmf/org/apache/xerces/xs/ShortList;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 3853
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v5, :cond_2

    .line 3859
    :cond_0
    if-ne v3, v5, :cond_3

    .line 3860
    const-string v1, "UnknownField"

    .line 3861
    .local v1, "code":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 3862
    .local v2, "eName":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    .line 3863
    .local v0, "cName":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    aput-object v0, v5, v9

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3886
    .end local v0    # "cName":Ljava/lang/String;
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "eName":Ljava/lang/String;
    :cond_1
    return-void

    .line 3854
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    aget-object v4, v4, v3

    if-eq v4, p1, :cond_0

    .line 3853
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3866
    :cond_3
    if-nez p2, :cond_4

    .line 3867
    const-string v1, "FieldMultipleMatch"

    .line 3868
    .restart local v1    # "code":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    .line 3869
    .restart local v0    # "cName":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3874
    .end local v0    # "cName":Ljava/lang/String;
    .end local v1    # "code":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 3875
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aput-short p4, v4, v3

    .line 3876
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aput-object p5, v4, v3

    .line 3877
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ne v4, v5, :cond_1

    .line 3878
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->checkDuplicateValues()V

    .line 3880
    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ge v3, v4, :cond_1

    .line 3881
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3882
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aget-short v4, v4, v3

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->addValueType(S)V

    .line 3883
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->addItemValueType(Lmf/org/apache/xerces/xs/ShortList;)V

    .line 3880
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3872
    :cond_4
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    goto :goto_1
.end method

.method public append(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)V
    .locals 3
    .param p1, "newVal"    # Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    .prologue
    .line 3765
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 3768
    return-void

    .line 3766
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected checkDuplicateValues()V
    .locals 0

    .prologue
    .line 3982
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3747
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    .line 3748
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    .line 3749
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    .line 3750
    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    .line 3751
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    .line 3752
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    .line 3753
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    .line 3754
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 3755
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    if-eqz v0, :cond_0

    .line 3756
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->clear()V

    .line 3758
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 3759
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 3761
    :cond_1
    return-void
.end method

.method public contains(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)I
    .locals 16
    .param p1, "vsb"    # Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    .prologue
    .line 3928
    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    .line 3929
    .local v13, "values":Ljava/util/Vector;
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v6

    .line 3930
    .local v6, "size1":I
    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_5

    .line 3931
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v6, :cond_2

    .line 3972
    :cond_0
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_1
    return v1

    .line 3932
    .restart local v1    # "i":I
    :cond_2
    move-object/from16 v0, p1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v8

    .line 3933
    .local v8, "val":S
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->valueTypeContains(S)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v13, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3936
    const/16 v14, 0x2c

    if-eq v8, v14, :cond_3

    const/16 v14, 0x2b

    if-ne v8, v14, :cond_4

    .line 3937
    :cond_3
    move-object/from16 v0, p1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v4

    .line 3938
    .local v4, "list1":Lmf/org/apache/xerces/xs/ShortList;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->itemValueTypeContains(Lmf/org/apache/xerces/xs/ShortList;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3931
    .end local v4    # "list1":Lmf/org/apache/xerces/xs/ShortList;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3946
    .end local v1    # "i":I
    .end local v8    # "val":S
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v7

    .line 3948
    .local v7, "size2":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 3950
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v7, :cond_1

    .line 3951
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v3, v14, :cond_6

    .line 3948
    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/2addr v1, v14

    goto :goto_1

    .line 3952
    :cond_6
    add-int v14, v1, v3

    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 3953
    .local v9, "value1":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    add-int v15, v2, v3

    invoke-virtual {v14, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    .line 3954
    .local v10, "value2":Ljava/lang/Object;
    add-int v14, v1, v3

    move-object/from16 v0, p1

    invoke-direct {v0, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v11

    .line 3955
    .local v11, "valueType1":S
    add-int v14, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v12

    .line 3956
    .local v12, "valueType2":S
    if-eq v9, v10, :cond_8

    if-ne v11, v12, :cond_7

    if-eqz v9, :cond_7

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 3950
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/2addr v2, v14

    goto :goto_2

    .line 3959
    :cond_8
    const/16 v14, 0x2c

    if-eq v11, v14, :cond_9

    const/16 v14, 0x2b

    if-ne v11, v14, :cond_a

    .line 3960
    :cond_9
    add-int v14, v1, v3

    move-object/from16 v0, p1

    invoke-direct {v0, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v4

    .line 3961
    .restart local v4    # "list1":Lmf/org/apache/xerces/xs/ShortList;
    add-int v14, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v5

    .line 3962
    .local v5, "list2":Lmf/org/apache/xerces/xs/ShortList;
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3951
    .end local v4    # "list1":Lmf/org/apache/xerces/xs/ShortList;
    .end local v5    # "list2":Lmf/org/apache/xerces/xs/ShortList;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public contains()Z
    .locals 11

    .prologue
    .line 3894
    const/4 v4, 0x0

    .line 3895
    .local v4, "next":I
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v5

    .line 3896
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 3918
    const/4 v10, 0x0

    :goto_1
    return v10

    .line 3897
    :cond_0
    iget v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int v4, v0, v10

    .line 3898
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v1, v10, :cond_1

    .line 3915
    const/4 v10, 0x1

    goto :goto_1

    .line 3899
    :cond_1
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aget-object v6, v10, v1

    .line 3900
    .local v6, "value1":Ljava/lang/Object;
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v10, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    .line 3901
    .local v7, "value2":Ljava/lang/Object;
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aget-short v8, v10, v1

    .line 3902
    .local v8, "valueType1":S
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v9

    .line 3903
    .local v9, "valueType2":S
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-ne v8, v9, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 3896
    :cond_2
    move v0, v4

    goto :goto_0

    .line 3906
    :cond_3
    const/16 v10, 0x2c

    if-eq v8, v10, :cond_4

    const/16 v10, 0x2b

    if-ne v8, v10, :cond_5

    .line 3907
    :cond_4
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aget-object v2, v10, v1

    .line 3908
    .local v2, "list1":Lmf/org/apache/xerces/xs/ShortList;
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v3

    .line 3909
    .local v3, "list2":Lmf/org/apache/xerces/xs/ShortList;
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3912
    .end local v2    # "list1":Lmf/org/apache/xerces/xs/ShortList;
    .end local v3    # "list2":Lmf/org/apache/xerces/xs/ShortList;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 3898
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 3826
    return-void
.end method

.method public endDocumentFragment()V
    .locals 0

    .prologue
    .line 3818
    return-void
.end method

.method public endValueScope()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3783
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    if-nez v4, :cond_1

    .line 3784
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v4

    if-ne v4, v6, :cond_0

    .line 3785
    const-string v1, "AbsentKeyValue"

    .line 3786
    .local v1, "code":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 3787
    .local v2, "eName":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    .line 3788
    .local v0, "cName":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v0, v5, v6

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3810
    .end local v0    # "cName":Ljava/lang/String;
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "eName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3799
    :cond_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-eq v4, v5, :cond_0

    .line 3800
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v4

    if-ne v4, v6, :cond_0

    .line 3801
    const-string v1, "KeyNotEnoughValues"

    .line 3802
    .restart local v1    # "code":Ljava/lang/String;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    .line 3803
    .local v3, "key":Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 3804
    .restart local v2    # "eName":Ljava/lang/String;
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    .line 3805
    .restart local v0    # "cName":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v0, v5, v6

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 3837
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3838
    return-void
.end method

.method public startValueScope()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3772
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    .line 3773
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v0, v1, :cond_0

    .line 3778
    return-void

    .line 3774
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 3775
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aput-short v2, v1, v0

    .line 3776
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aput-object v3, v1, v0

    .line 3773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 4037
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4038
    .local v2, "s":Ljava/lang/String;
    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 4039
    .local v0, "index1":I
    if-eq v0, v4, :cond_0

    .line 4040
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 4042
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 4043
    .local v1, "index2":I
    if-eq v1, v4, :cond_1

    .line 4044
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 4046
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected toString(Ljava/util/Vector;II)Ljava/lang/String;
    .locals 3
    .param p1, "values"    # Ljava/util/Vector;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 4010
    if-nez p3, :cond_0

    .line 4011
    const-string v2, ""

    .line 4027
    :goto_0
    return-object v2

    .line 4015
    :cond_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 4016
    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4020
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4021
    .local v1, "str":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, p3, :cond_2

    .line 4027
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4022
    :cond_2
    if-lez v0, :cond_3

    .line 4023
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4025
    :cond_3
    add-int v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 4021
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 3988
    array-length v1, p1

    .line 3989
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 3990
    const-string v2, ""

    .line 4002
    :goto_0
    return-object v2

    .line 3993
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3996
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 4002
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3997
    :cond_1
    if-lez v0, :cond_2

    .line 3998
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4000
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 3996
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
