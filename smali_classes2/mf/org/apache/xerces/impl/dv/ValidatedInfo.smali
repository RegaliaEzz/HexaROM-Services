.class public Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
.super Ljava/lang/Object;
.source "ValidatedInfo.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSValue;


# instance fields
.field public actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public actualValue:Ljava/lang/Object;

.field public actualValueType:S

.field public itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

.field public memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public normalizedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToPrimitiveKind(S)S
    .locals 1
    .param p0, "valueType"    # S

    .prologue
    .line 155
    const/16 v0, 0x14

    if-gt p0, v0, :cond_1

    .line 167
    .end local p0    # "valueType":S
    :cond_0
    :goto_0
    return p0

    .line 159
    .restart local p0    # "valueType":S
    :cond_1
    const/16 v0, 0x1d

    if-gt p0, v0, :cond_2

    .line 160
    const/4 p0, 0x2

    goto :goto_0

    .line 163
    :cond_2
    const/16 v0, 0x2a

    if-gt p0, v0, :cond_0

    .line 164
    const/4 p0, 0x4

    goto :goto_0
.end method

.method public static isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z
    .locals 13
    .param p0, "info1"    # Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .param p1, "info2"    # Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 119
    iget-short v11, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-static {v11}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->convertToPrimitiveKind(S)S

    move-result v3

    .line 120
    .local v3, "primitiveType1":S
    iget-short v11, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-static {v11}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->convertToPrimitiveKind(S)S

    move-result v4

    .line 121
    .local v4, "primitiveType2":S
    if-eq v3, v4, :cond_3

    .line 122
    if-ne v3, v9, :cond_0

    if-eq v4, v12, :cond_2

    .line 123
    :cond_0
    if-ne v3, v12, :cond_1

    if-eq v4, v9, :cond_2

    :cond_1
    move v9, v10

    .line 145
    :cond_2
    :goto_0
    return v9

    .line 125
    :cond_3
    const/16 v11, 0x2c

    if-eq v3, v11, :cond_4

    const/16 v11, 0x2b

    if-ne v3, v11, :cond_2

    .line 126
    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    .line 127
    .local v5, "typeList1":Lmf/org/apache/xerces/xs/ShortList;
    iget-object v7, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    .line 128
    .local v7, "typeList2":Lmf/org/apache/xerces/xs/ShortList;
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v6

    .line 129
    .local v6, "typeList1Length":I
    :goto_1
    if-eqz v7, :cond_6

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v8

    .line 130
    .local v8, "typeList2Length":I
    :goto_2
    if-eq v6, v8, :cond_7

    move v9, v10

    .line 131
    goto :goto_0

    .end local v6    # "typeList1Length":I
    .end local v8    # "typeList2Length":I
    :cond_5
    move v6, v10

    .line 128
    goto :goto_1

    .restart local v6    # "typeList1Length":I
    :cond_6
    move v8, v10

    .line 129
    goto :goto_2

    .line 133
    .restart local v8    # "typeList2Length":I
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v6, :cond_2

    .line 134
    invoke-interface {v5, v0}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v11

    invoke-static {v11}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->convertToPrimitiveKind(S)S

    move-result v1

    .line 135
    .local v1, "primitiveItem1":S
    invoke-interface {v7, v0}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v11

    invoke-static {v11}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->convertToPrimitiveKind(S)S

    move-result v2

    .line 136
    .local v2, "primitiveItem2":S
    if-eq v1, v2, :cond_9

    .line 137
    if-ne v1, v9, :cond_8

    if-eq v2, v12, :cond_9

    .line 138
    :cond_8
    if-ne v1, v12, :cond_a

    if-ne v2, v9, :cond_a

    .line 133
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    move v9, v10

    .line 141
    goto :goto_0
.end method


# virtual methods
.method public copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V
    .locals 6
    .param p1, "o"    # Lmf/org/apache/xerces/xs/XSValue;

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 205
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    .line 236
    :goto_0
    return-void

    .line 207
    :cond_0
    instance-of v4, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 208
    check-cast v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 209
    .local v2, "other":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    iget-object v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 210
    iget-object v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 211
    iget-short v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    .line 212
    iget-object v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 213
    iget-object v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 214
    iget-object v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 215
    iget-object v4, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0

    .line 218
    .end local v2    # "other":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getNormalizedValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 219
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getActualValue()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 220
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getActualValueType()S

    move-result v4

    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    .line 221
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 222
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 223
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-nez v4, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 224
    .local v3, "realType":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBuiltInKind()S

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_4

    .line 225
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getMemberTypeDefinitions()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v1

    .line 226
    .local v1, "members":Lmf/org/apache/xerces/xs/XSObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v4

    new-array v4, v4, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 234
    .end local v0    # "i":I
    .end local v1    # "members":Lmf/org/apache/xerces/xs/XSObjectList;
    :goto_3
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getListValueTypes()Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0

    .line 223
    .end local v3    # "realType":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_1

    .line 228
    .restart local v0    # "i":I
    .restart local v1    # "members":Lmf/org/apache/xerces/xs/XSObjectList;
    .restart local v3    # "realType":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v4, v5, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 232
    .end local v0    # "i":I
    .end local v1    # "members":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_3
.end method

.method public getActualValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getActualValueType()S
    .locals 1

    .prologue
    .line 177
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    return v0
.end method

.method public getListValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0
.end method

.method public getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public getMemberTypeDefinitions()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-nez v0, :cond_0

    .line 186
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 188
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    goto :goto_0
.end method

.method public getNormalizedValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 94
    const/16 v0, 0x2d

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    .line 95
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 96
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 97
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 98
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    .line 99
    return-void
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
