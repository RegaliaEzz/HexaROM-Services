.class public Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
.super Ljava/lang/Object;
.source "XSSimpleTypeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/XSSimpleType;
.implements Lmf/org/w3c/dom/TypeInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;
    }
.end annotation


# static fields
.field public static final ANYATOMICTYPE_DT:S = 0x31s

.field static final ANY_TYPE:Ljava/lang/String; = "anyType"

.field public static final DAYTIMEDURATION_DT:S = 0x2fs

.field static final DERIVATION_ANY:I = 0x0

.field static final DERIVATION_EXTENSION:I = 0x2

.field static final DERIVATION_LIST:I = 0x8

.field static final DERIVATION_RESTRICTION:I = 0x1

.field static final DERIVATION_UNION:I = 0x4

.field protected static final DV_ANYATOMICTYPE:S = 0x1ds

.field protected static final DV_ANYSIMPLETYPE:S = 0x0s

.field protected static final DV_ANYURI:S = 0x11s

.field protected static final DV_BASE64BINARY:S = 0x10s

.field protected static final DV_BOOLEAN:S = 0x2s

.field protected static final DV_DATE:S = 0x9s

.field protected static final DV_DATETIME:S = 0x7s

.field protected static final DV_DAYTIMEDURATION:S = 0x1cs

.field protected static final DV_DECIMAL:S = 0x3s

.field protected static final DV_DOUBLE:S = 0x5s

.field protected static final DV_DURATION:S = 0x6s

.field protected static final DV_ENTITY:S = 0x17s

.field protected static final DV_FLOAT:S = 0x4s

.field protected static final DV_GDAY:S = 0xds

.field protected static final DV_GMONTH:S = 0xes

.field protected static final DV_GMONTHDAY:S = 0xcs

.field protected static final DV_GYEAR:S = 0xbs

.field protected static final DV_GYEARMONTH:S = 0xas

.field protected static final DV_HEXBINARY:S = 0xfs

.field protected static final DV_ID:S = 0x15s

.field protected static final DV_IDREF:S = 0x16s

.field protected static final DV_INTEGER:S = 0x18s

.field protected static final DV_LIST:S = 0x19s

.field protected static final DV_NOTATION:S = 0x14s

.field protected static final DV_PRECISIONDECIMAL:S = 0x13s

.field protected static final DV_QNAME:S = 0x12s

.field protected static final DV_STRING:S = 0x1s

.field protected static final DV_TIME:S = 0x8s

.field protected static final DV_UNION:S = 0x1as

.field protected static final DV_YEARMONTHDURATION:S = 0x1bs

.field static final NORMALIZE_FULL:S = 0x2s

.field static final NORMALIZE_NONE:S = 0x0s

.field static final NORMALIZE_TRIM:S = 0x1s

.field public static final PRECISIONDECIMAL_DT:S = 0x30s

.field static final SPECIAL_PATTERN_NAME:S = 0x2s

.field static final SPECIAL_PATTERN_NCNAME:S = 0x3s

.field static final SPECIAL_PATTERN_NMTOKEN:S = 0x1s

.field static final SPECIAL_PATTERN_NONE:S = 0x0s

.field static final SPECIAL_PATTERN_STRING:[Ljava/lang/String;

.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field static final WS_FACET_STRING:[Ljava/lang/String;

.field public static final YEARMONTHDURATION_DT:S = 0x2es

.field static final fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field static final fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field static final fDVNormalizeType:[S

.field static final fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

.field static final fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

.field private static final gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;


# instance fields
.field public enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fAnonymous:Z

.field private fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fBounded:Z

.field private fBuiltInKind:S

.field private fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

.field private fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field private fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fEnumerationSize:I

.field private fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

.field private fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field private fFacetsDefined:S

.field private fFinalSet:S

.field private fFinite:Z

.field private fFixedFacet:S

.field private fFractionDigits:I

.field private fIsImmutable:Z

.field private fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fLength:I

.field private fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

.field private fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

.field private fMaxExclusive:Ljava/lang/Object;

.field private fMaxInclusive:Ljava/lang/Object;

.field private fMaxLength:I

.field private fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fMinExclusive:Ljava/lang/Object;

.field private fMinInclusive:Ljava/lang/Object;

.field private fMinLength:I

.field private fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field private fNumeric:Z

.field private fOrdered:S

.field private fPattern:Ljava/util/Vector;

.field private fPatternStr:Ljava/util/Vector;

.field private fPatternType:S

.field private fTargetNamespace:Ljava/lang/String;

.field private fTotalDigits:I

.field private fTypeName:Ljava/lang/String;

.field private fValidationDV:S

.field private fVariety:S

.field private fWhiteSpace:S

.field public fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 99
    const/16 v0, 0x1e

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v1, 0x0

    .line 100
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnySimpleDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnySimpleDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 101
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/StringDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/StringDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 102
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/BooleanDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/BooleanDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 103
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 104
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/FloatDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/FloatDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 105
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 106
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 107
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DateTimeDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DateTimeDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 108
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 109
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DateDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 110
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 111
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 112
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 113
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DayDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 114
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 115
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 116
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 117
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 118
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 119
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 120
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 121
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IDDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IDDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 122
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IDREFDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IDREFDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 123
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/EntityDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/EntityDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 124
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IntegerDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IntegerDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 125
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/ListDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/ListDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 126
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/UnionDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/UnionDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 127
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 128
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 129
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnyAtomicDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnyAtomicDV;-><init>()V

    aput-object v2, v0, v1

    .line 99
    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 135
    const/16 v0, 0x1e

    new-array v0, v0, [S

    const/4 v1, 0x1

    .line 137
    const/4 v2, 0x2

    aput-short v2, v0, v1

    const/4 v1, 0x2

    .line 138
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x3

    .line 139
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x4

    .line 140
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x5

    .line 141
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x6

    .line 142
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x7

    .line 143
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x8

    .line 144
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x9

    .line 145
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xa

    .line 146
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xb

    .line 147
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xc

    .line 148
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xd

    .line 149
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xe

    .line 150
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xf

    .line 151
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x11

    .line 153
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x12

    .line 154
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x13

    .line 155
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x14

    .line 156
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x15

    .line 157
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x16

    .line 158
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x17

    .line 159
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x18

    .line 160
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x19

    .line 161
    const/4 v2, 0x2

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    .line 163
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    .line 164
    const/4 v2, 0x1

    aput-short v2, v0, v1

    .line 135
    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVNormalizeType:[S

    .line 173
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 174
    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NMTOKEN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NCName"

    aput-object v2, v0, v1

    .line 173
    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->SPECIAL_PATTERN_STRING:[Ljava/lang/String;

    .line 177
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 178
    const-string v2, "preserve"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "replace"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "collapse"

    aput-object v2, v0, v1

    .line 177
    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    .line 197
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    .line 2838
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v1, 0x0

    const-string v2, "anySimpleType"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2840
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v2, "anyAtomicType"

    const/16 v3, 0x1d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x31

    invoke-direct/range {v0 .. v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2845
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$2;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$2;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    .line 2889
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 245
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 254
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 256
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 257
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 259
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 260
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 263
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 264
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 265
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 266
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 267
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 268
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 304
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 306
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 316
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 2891
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 319
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "finalSet"    # S
    .param p4, "itemType"    # Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .param p5, "isImmutable"    # Z
    .param p6, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 245
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 254
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 256
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 257
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 259
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 260
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 263
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 264
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 265
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 266
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 267
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 268
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 304
    iput-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 306
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 316
    iput-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 2891
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 427
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 428
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 429
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 430
    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 431
    iput-object p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 433
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 434
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 435
    const/16 v0, 0x19

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 436
    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 437
    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 438
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 441
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 442
    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 445
    const/16 v0, 0x2c

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 446
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "finalSet"    # S
    .param p4, "memberTypes"    # [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .param p5, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 245
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 254
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 256
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 257
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 259
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 260
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 263
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 264
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 265
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 266
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 267
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 268
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 304
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 306
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 316
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 2891
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 451
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 452
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 453
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 454
    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 455
    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 457
    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 458
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 459
    const/16 v0, 0x1a

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 464
    const/16 v0, 0x10

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 465
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 468
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 471
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 474
    const/16 v0, 0x2d

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 475
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 4
    .param p1, "base"    # Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "finalSet"    # S
    .param p5, "isImmutable"    # Z
    .param p6, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 245
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 254
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 256
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 257
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 259
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 260
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 263
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 264
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 265
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 266
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 267
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 268
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 304
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 306
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 316
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 2891
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 363
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 364
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 365
    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 366
    iput-short p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 367
    iput-object p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 369
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 370
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 371
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch v0, :pswitch_data_0

    .line 384
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 385
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 386
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 387
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 388
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    .line 389
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 390
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    .line 391
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 392
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 397
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 398
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 399
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 400
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 403
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 404
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 405
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 406
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 407
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 408
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 409
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 410
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 411
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 412
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 413
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 414
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 417
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 418
    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 421
    iget-short v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 422
    return-void

    .line 375
    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto/16 :goto_0

    .line 378
    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto/16 :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V
    .locals 0
    .param p1, "base"    # Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "finalSet"    # S
    .param p5, "isImmutable"    # Z
    .param p6, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;
    .param p7, "builtInKind"    # S

    .prologue
    .line 355
    invoke-direct/range {p0 .. p6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    .line 357
    iput-short p7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 358
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V
    .locals 6
    .param p1, "base"    # Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "validateDV"    # S
    .param p4, "ordered"    # S
    .param p5, "bounded"    # Z
    .param p6, "finite"    # Z
    .param p7, "numeric"    # Z
    .param p8, "isImmutable"    # Z
    .param p9, "builtInKind"    # S

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 245
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 254
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 256
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 257
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 259
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 260
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 263
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 264
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 265
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 266
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 267
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 268
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 304
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 306
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 316
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 2891
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 325
    iput-boolean p8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 326
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 327
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 328
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 330
    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 331
    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 332
    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 333
    if-eqz p3, :cond_0

    .line 334
    const/16 v0, 0x1d

    if-eq p3, v0, :cond_0

    .line 335
    if-ne p3, v4, :cond_1

    .line 336
    :cond_0
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 342
    :goto_0
    iput-short p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    .line 343
    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    .line 344
    iput-boolean p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    .line 345
    iput-boolean p7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    .line 346
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 349
    iput-short p9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 350
    return-void

    .line 339
    :cond_1
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 340
    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto :goto_0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    return v0
.end method

.method private appendEnumString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 3481
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3482
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    if-lt v0, v1, :cond_0

    .line 3488
    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3489
    return-void

    .line 3483
    :cond_0
    if-eqz v0, :cond_1

    .line 3484
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3486
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 3482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private calcFundamentalFacets()V
    .locals 0

    .prologue
    .line 2377
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setOrdered()V

    .line 2378
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNumeric()V

    .line 2379
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setBounded()V

    .line 2380
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setCardinality()V

    .line 2381
    return-void
.end method

.method private checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 8
    .param p1, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .param p2, "validatedInfo"    # Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1778
    iget-object v4, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1780
    .local v4, "ob":Ljava/lang/Object;
    iget-short v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1782
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v6, v6, v7

    invoke-virtual {v6, v4, p1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->checkExtraRules(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    .line 1815
    :goto_0
    return-void

    .line 1784
    :cond_0
    iget-short v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    move-object v5, v4

    .line 1786
    check-cast v5, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    .line 1787
    .local v5, "values":Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;
    iget-object v2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1788
    .local v2, "memberType":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->getLength()I

    move-result v1

    .line 1790
    .local v1, "len":I
    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 1791
    iget-object v3, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v3, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    .local v3, "memberTypes":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_2

    .line 1805
    .end local v3    # "memberTypes":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :cond_1
    iput-object v5, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1806
    iput-object v2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    .line 1793
    .restart local v3    # "memberTypes":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :cond_2
    :try_start_1
    invoke-virtual {v5, v0}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->item(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1794
    aget-object v6, v3, v0

    iput-object v6, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1795
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v6, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1792
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1798
    .end local v0    # "i":I
    .end local v3    # "memberTypes":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :cond_3
    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_1

    .line 1799
    invoke-virtual {v5, v0}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->item(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1800
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v6, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1798
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1804
    .end local v0    # "i":I
    :catchall_0
    move-exception v6

    .line 1805
    iput-object v5, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1806
    iput-object v2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1807
    throw v6

    .line 1811
    .end local v1    # "len":I
    .end local v2    # "memberType":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .end local v5    # "values":Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;
    :cond_4
    iget-object v6, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v6, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    goto :goto_0
.end method

.method private checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 27
    .param p1, "validatedInfo"    # Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1636
    move-object/from16 v0, p1

    iget-object v10, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1637
    .local v10, "ob":Ljava/lang/Object;
    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 1638
    .local v3, "content":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    move/from16 v19, v0

    .line 1639
    .local v19, "type":S
    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    .line 1642
    .local v7, "itemType":Lmf/org/apache/xerces/xs/ShortList;
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v22, v0

    const/16 v23, 0x12

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v22, v0

    const/16 v23, 0x14

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getDataLength(Ljava/lang/Object;)I

    move-result v9

    .line 1646
    .local v9, "length":I
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x4

    if-eqz v22, :cond_0

    .line 1647
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v9, v0, :cond_0

    .line 1648
    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-maxLength-valid"

    .line 1649
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    .line 1648
    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    .line 1654
    :cond_0
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_1

    .line 1655
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_1

    .line 1656
    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-minLength-valid"

    .line 1657
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    .line 1656
    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    .line 1662
    :cond_1
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_2

    .line 1663
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v9, v0, :cond_2

    .line 1664
    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-length-valid"

    .line 1665
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    .line 1664
    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    .line 1671
    .end local v9    # "length":I
    :cond_2
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x800

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 1672
    const/4 v11, 0x0

    .line 1673
    .local v11, "present":Z
    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    .line 1674
    .local v5, "enumSize":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v14

    .line 1675
    .local v14, "primitiveType1":S
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v5, :cond_3

    .line 1710
    :goto_1
    if-nez v11, :cond_f

    .line 1711
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 1712
    .local v16, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->appendEnumString(Ljava/lang/StringBuffer;)V

    .line 1713
    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-enumeration-valid"

    .line 1714
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    .line 1713
    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    .line 1676
    .end local v16    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v22, v0

    aget-object v22, v22, v6

    move-object/from16 v0, v22

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v15

    .line 1677
    .local v15, "primitiveType2":S
    if-eq v14, v15, :cond_5

    .line 1678
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_4

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v15, v0, :cond_5

    .line 1679
    :cond_4
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v14, v0, :cond_e

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_e

    .line 1680
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v22, v0

    aget-object v22, v22, v6

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 1681
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-eq v14, v0, :cond_6

    const/16 v22, 0x2b

    move/from16 v0, v22

    if-ne v14, v0, :cond_d

    .line 1682
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v22, v0

    aget-object v22, v22, v6

    move-object/from16 v0, v22

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    .line 1683
    .local v4, "enumItemType":Lmf/org/apache/xerces/xs/ShortList;
    if-eqz v7, :cond_8

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v20

    .line 1684
    .local v20, "typeList1Length":I
    :goto_2
    if-eqz v4, :cond_9

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v21

    .line 1685
    .local v21, "typeList2Length":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 1687
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    move/from16 v0, v20

    if-lt v8, v0, :cond_a

    .line 1698
    :cond_7
    move/from16 v0, v20

    if-ne v8, v0, :cond_e

    .line 1699
    const/4 v11, 0x1

    .line 1700
    goto/16 :goto_1

    .line 1683
    .end local v8    # "j":I
    .end local v20    # "typeList1Length":I
    .end local v21    # "typeList2Length":I
    :cond_8
    const/16 v20, 0x0

    goto :goto_2

    .line 1684
    .restart local v20    # "typeList1Length":I
    :cond_9
    const/16 v21, 0x0

    goto :goto_3

    .line 1688
    .restart local v8    # "j":I
    .restart local v21    # "typeList2Length":I
    :cond_a
    invoke-interface {v7, v8}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v12

    .line 1689
    .local v12, "primitiveItem1":S
    invoke-interface {v4, v8}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v13

    .line 1690
    .local v13, "primitiveItem2":S
    if-eq v12, v13, :cond_c

    .line 1691
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_b

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v13, v0, :cond_c

    .line 1692
    :cond_b
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v12, v0, :cond_7

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_7

    .line 1687
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1705
    .end local v4    # "enumItemType":Lmf/org/apache/xerces/xs/ShortList;
    .end local v8    # "j":I
    .end local v12    # "primitiveItem1":S
    .end local v13    # "primitiveItem2":S
    .end local v20    # "typeList1Length":I
    .end local v21    # "typeList2Length":I
    :cond_d
    const/4 v11, 0x1

    .line 1706
    goto/16 :goto_1

    .line 1675
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1719
    .end local v5    # "enumSize":I
    .end local v6    # "i":I
    .end local v11    # "present":Z
    .end local v14    # "primitiveType1":S
    .end local v15    # "primitiveType2":S
    :cond_f
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getFractionDigits(Ljava/lang/Object;)I

    move-result v17

    .line 1721
    .local v17, "scale":I
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_10

    .line 1722
    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-fractionDigits-valid"

    .line 1723
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    .line 1722
    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    .line 1728
    .end local v17    # "scale":I
    :cond_10
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getTotalDigits(Ljava/lang/Object;)I

    move-result v18

    .line 1730
    .local v18, "totalDigits":I
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    .line 1731
    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-totalDigits-valid"

    .line 1732
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    .line 1731
    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    .line 1739
    .end local v18    # "totalDigits":I
    :cond_11
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x20

    if-eqz v22, :cond_12

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 1741
    .local v2, "compare":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_12

    if-eqz v2, :cond_12

    .line 1742
    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-maxInclusive-valid"

    .line 1743
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    .line 1742
    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    .line 1748
    .end local v2    # "compare":I
    :cond_12
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x40

    if-eqz v22, :cond_13

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 1750
    .restart local v2    # "compare":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_13

    .line 1751
    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-maxExclusive-valid"

    .line 1752
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    .line 1751
    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    .line 1757
    .end local v2    # "compare":I
    :cond_13
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 1759
    .restart local v2    # "compare":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_14

    if-eqz v2, :cond_14

    .line 1760
    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-minInclusive-valid"

    .line 1761
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    .line 1760
    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    .line 1766
    .end local v2    # "compare":I
    :cond_14
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 1768
    .restart local v2    # "compare":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_15

    .line 1769
    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-minExclusive-valid"

    .line 1770
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    .line 1769
    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    .line 1774
    .end local v2    # "compare":I
    :cond_15
    return-void
.end method

.method private convertToPrimitiveKind(S)S
    .locals 1
    .param p1, "valueType"    # S

    .prologue
    .line 3465
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    .line 3477
    .end local p1    # "valueType":S
    :cond_0
    :goto_0
    return p1

    .line 3469
    .restart local p1    # "valueType":S
    :cond_1
    const/16 v0, 0x1d

    if-gt p1, v0, :cond_2

    .line 3470
    const/4 p1, 0x2

    goto :goto_0

    .line 3473
    :cond_2
    const/16 v0, 0x2a

    if-gt p1, v0, :cond_0

    .line 3474
    const/4 p1, 0x4

    goto :goto_0
.end method

.method private getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;
    .locals 27
    .param p1, "content"    # Ljava/lang/Object;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .param p3, "validatedInfo"    # Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .param p4, "needNormalize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1823
    if-eqz p4, :cond_2

    .line 1824
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v15

    .line 1828
    .local v15, "nvalue":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x8

    if-eqz v21, :cond_0

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    add-int/lit8 v11, v21, -0x1

    .local v11, "idx":I
    :goto_1
    if-gez v11, :cond_3

    .line 1842
    .end local v11    # "idx":I
    :cond_0
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 1845
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 1847
    const/16 v18, 0x0

    .line 1848
    .local v18, "seenErr":Z
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1850
    invoke-static {v15}, Lmf/org/apache/xerces/util/XMLChar;->isValidNmtoken(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/16 v18, 0x0

    .line 1860
    :cond_1
    :goto_2
    if-eqz v18, :cond_a

    .line 1861
    new-instance v21, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v22, "cvc-datatype-valid.1.2.1"

    .line 1862
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v15, v23, v24

    const/16 v24, 0x1

    sget-object v25, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->SPECIAL_PATTERN_STRING:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v26, v0

    aget-object v25, v25, v26

    aput-object v25, v23, v24

    .line 1861
    invoke-direct/range {v21 .. v23}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v21

    .line 1826
    .end local v15    # "nvalue":Ljava/lang/String;
    .end local v18    # "seenErr":Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "nvalue":Ljava/lang/String;
    goto :goto_0

    .line 1831
    .restart local v11    # "idx":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    .line 1832
    .local v17, "regex":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 1833
    new-instance v21, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v22, "cvc-pattern-valid"

    .line 1834
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    const/16 v24, 0x1

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    .line 1833
    invoke-direct/range {v21 .. v23}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v21

    .line 1830
    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_1

    .line 1850
    .end local v11    # "idx":I
    .end local v17    # "regex":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v18    # "seenErr":Z
    :cond_5
    const/16 v18, 0x1

    goto :goto_2

    .line 1852
    :cond_6
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 1854
    invoke-static {v15}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    const/16 v18, 0x0

    .line 1855
    :goto_3
    goto/16 :goto_2

    .line 1854
    :cond_7
    const/16 v18, 0x1

    goto :goto_3

    .line 1856
    :cond_8
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1858
    invoke-static {v15}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v18, 0x0

    :goto_4
    goto/16 :goto_2

    :cond_9
    const/16 v18, 0x1

    goto :goto_4

    .line 1866
    .end local v18    # "seenErr":Z
    :cond_a
    move-object/from16 v0, p3

    iput-object v15, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;

    move-result-object v7

    .line 1868
    .local v7, "avalue":Ljava/lang/Object;
    move-object/from16 v0, p3

    iput-object v7, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1869
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p3

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    .line 1870
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1931
    .end local v7    # "avalue":Ljava/lang/Object;
    :goto_5
    return-object v7

    .line 1874
    :cond_b
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 1876
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v21, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v15, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    .local v16, "parsedList":Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    .line 1878
    .local v8, "countOfTokens":I
    new-array v7, v8, [Ljava/lang/Object;

    .line 1879
    .local v7, "avalue":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    const/4 v12, 0x1

    .line 1880
    .local v12, "isUnion":Z
    :goto_6
    if-eqz v12, :cond_e

    move/from16 v21, v8

    :goto_7
    move/from16 v0, v21

    new-array v13, v0, [S

    .line 1881
    .local v13, "itemTypes":[S
    if-nez v12, :cond_c

    .line 1882
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    move/from16 v22, v0

    aput-short v22, v13, v21

    .line 1883
    :cond_c
    new-array v14, v8, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 1884
    .local v14, "memberTypes":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_8
    if-lt v10, v8, :cond_f

    .line 1901
    new-instance v20, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;-><init>([Ljava/lang/Object;)V

    .line 1902
    .local v20, "v":Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1903
    if-eqz v12, :cond_12

    const/16 v21, 0x2b

    :goto_9
    move/from16 v0, v21

    move-object/from16 v1, p3

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    .line 1904
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1905
    move-object/from16 v0, p3

    iput-object v14, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1906
    new-instance v21, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    array-length v0, v13

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v13, v1}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    .line 1907
    move-object/from16 v0, p3

    iput-object v15, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 1909
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v7, v20

    .line 1911
    goto/16 :goto_5

    .line 1879
    .end local v10    # "i":I
    .end local v12    # "isUnion":Z
    .end local v13    # "itemTypes":[S
    .end local v14    # "memberTypes":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .end local v20    # "v":Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;
    :cond_d
    const/4 v12, 0x0

    goto :goto_6

    .line 1880
    .restart local v12    # "isUnion":Z
    :cond_e
    const/16 v21, 0x1

    goto :goto_7

    .line 1891
    .restart local v10    # "i":I
    .restart local v13    # "itemTypes":[S
    .restart local v14    # "memberTypes":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v21

    aput-object v21, v7, v10

    .line 1892
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v21, v0

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 1894
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1896
    :cond_10
    move-object/from16 v0, p3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v21, v0

    check-cast v21, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aput-object v21, v14, v10

    .line 1897
    if-eqz v12, :cond_11

    .line 1898
    aget-object v21, v14, v10

    move-object/from16 v0, v21

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    move/from16 v21, v0

    aput-short v21, v13, v10

    .line 1884
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 1903
    .restart local v20    # "v":Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;
    :cond_12
    const/16 v21, 0x2c

    goto/16 :goto_9

    .line 1914
    .end local v7    # "avalue":[Ljava/lang/Object;
    .end local v8    # "countOfTokens":I
    .end local v10    # "i":I
    .end local v12    # "isUnion":Z
    .end local v13    # "itemTypes":[S
    .end local v14    # "memberTypes":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .end local v16    # "parsedList":Ljava/util/StringTokenizer;
    .end local v20    # "v":Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1915
    .local v5, "_content":Ljava/lang/Object;
    :goto_a
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v10, v0, :cond_15

    .line 1935
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 1937
    .local v19, "typesBuffer":Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v10, v0, :cond_17

    .line 1952
    new-instance v21, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v22, "cvc-datatype-valid.1.2.3"

    .line 1953
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 1952
    invoke-direct/range {v21 .. v23}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v21

    .end local v5    # "_content":Ljava/lang/Object;
    .end local v10    # "i":I
    .end local v19    # "typesBuffer":Ljava/lang/StringBuffer;
    :cond_14
    move-object/from16 v5, p1

    .line 1914
    goto :goto_a

    .line 1923
    .restart local v5    # "_content":Ljava/lang/Object;
    .restart local v10    # "i":I
    :cond_15
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v22

    invoke-direct {v0, v5, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v6

    .line 1924
    .local v6, "aValue":Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v21

    if-eqz v21, :cond_16

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    move-object/from16 v0, v21

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v21, v0

    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    move-object/from16 v0, v21

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v21, v0

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_16

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1928
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1930
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v6

    .line 1931
    goto/16 :goto_5

    .line 1932
    .end local v6    # "aValue":Ljava/lang/Object;
    :catch_0
    move-exception v21

    .line 1915
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    .line 1938
    .restart local v19    # "typesBuffer":Ljava/lang/StringBuffer;
    :cond_17
    if-eqz v10, :cond_18

    .line 1939
    const-string v21, " | "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1940
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    aget-object v9, v21, v10

    .line 1941
    .local v9, "decl":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    iget-object v0, v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_19

    .line 1942
    const/16 v21, 0x7b

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1943
    iget-object v0, v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1944
    const/16 v21, 0x7d

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1946
    :cond_19
    iget-object v0, v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1947
    iget-object v0, v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 1948
    const-string v21, " : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1949
    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->appendEnumString(Ljava/lang/StringBuffer;)V

    .line 1937
    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c
.end method

.method protected static getGDVs()[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    invoke-virtual {v0}, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    return-object v0
.end method

.method private getPrimitiveDV(S)S
    .locals 1
    .param p1, "validationDV"    # S

    .prologue
    .line 2549
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    .line 2550
    :cond_0
    const/4 p1, 0x1

    .line 2559
    .end local p1    # "validationDV":S
    :cond_1
    :goto_0
    return p1

    .line 2552
    .restart local p1    # "validationDV":S
    :cond_2
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 2553
    const/4 p1, 0x3

    goto :goto_0
.end method

.method private isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 6
    .param p1, "ancestorNS"    # Ljava/lang/String;
    .param p2, "ancestorName"    # Ljava/lang/String;
    .param p3, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .prologue
    const/4 v4, 0x1

    .line 2700
    const/4 v0, 0x0

    .line 2701
    .local v0, "derivedFrom":Z
    const/4 v2, 0x0

    .line 2703
    .local v2, "oldType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    if-ne p3, v2, :cond_2

    :cond_1
    :goto_1
    move v3, v0

    .line 2737
    .end local p3    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_2
    return v3

    .line 2706
    .restart local p3    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2707
    if-nez p1, :cond_3

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2708
    :cond_3
    if-eqz p1, :cond_5

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2709
    :cond_4
    const/4 v0, 0x1

    .line 2710
    goto :goto_1

    .line 2714
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    .line 2715
    goto :goto_2

    .line 2716
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    .line 2717
    goto :goto_2

    .line 2718
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    .line 2719
    goto :goto_2

    .line 2721
    :cond_8
    move-object v2, p3

    move-object v3, p3

    .line 2723
    check-cast v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, p3

    .line 2724
    check-cast v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    if-ne v3, v4, :cond_a

    .line 2725
    :cond_9
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p3

    .line 2726
    goto :goto_0

    :cond_a
    move-object v3, p3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_b

    .line 2727
    const/4 v1, 0x0

    .local v1, "i":I
    move-object v3, p3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2729
    check-cast p3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2730
    .end local p3    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    .line 2729
    check-cast v3, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2728
    invoke-direct {p0, p1, p2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    goto :goto_2

    .end local v1    # "i":I
    .restart local p3    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_b
    move-object v3, p3

    .line 2732
    check-cast v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 2733
    check-cast p3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .end local p3    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p3

    .restart local p3    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    goto/16 :goto_0
.end method

.method private isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 3
    .param p1, "ancestorNS"    # Ljava/lang/String;
    .param p2, "ancestorName"    # Ljava/lang/String;
    .param p3, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .prologue
    .line 2786
    if-eqz p3, :cond_0

    move-object v1, p3

    check-cast v1, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2789
    check-cast p3, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    .end local p3    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    .line 2792
    .local v0, "itemType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v0, :cond_0

    .line 2795
    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2796
    const/4 v1, 0x1

    .line 2800
    .end local v0    # "itemType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 2
    .param p1, "ancestorNS"    # Ljava/lang/String;
    .param p2, "ancestorName"    # Ljava/lang/String;
    .param p3, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .prologue
    .line 2756
    const/4 v0, 0x0

    .line 2757
    .local v0, "oldType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_0
    if-eqz p3, :cond_0

    if-ne p3, v0, :cond_1

    .line 2768
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 2758
    :cond_1
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2759
    if-eqz p1, :cond_2

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2760
    :cond_2
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    .line 2762
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 2764
    :cond_4
    move-object v0, p3

    .line 2765
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p3

    goto :goto_0
.end method

.method private isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 4
    .param p1, "ancestorNS"    # Ljava/lang/String;
    .param p2, "ancestorName"    # Ljava/lang/String;
    .param p3, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .prologue
    .line 2819
    if-eqz p3, :cond_0

    move-object v2, p3

    check-cast v2, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2822
    check-cast p3, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    .end local p3    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v1

    .line 2824
    .local v1, "memberTypes":Lmf/org/apache/xerces/xs/XSObjectList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 2834
    .end local v0    # "i":I
    .end local v1    # "memberTypes":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 2826
    .restart local v0    # "i":I
    .restart local v1    # "memberTypes":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_1
    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2828
    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-direct {p0, p1, p2, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2829
    const/4 v2, 0x1

    goto :goto_1

    .line 2824
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;S)Ljava/lang/String;
    .locals 10
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ws"    # S

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/16 v6, 0x20

    .line 1975
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 1976
    .local v3, "len":I
    :goto_0
    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    .line 2016
    .end local p0    # "content":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 1975
    .end local v3    # "len":I
    .restart local p0    # "content":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 1979
    .restart local v3    # "len":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1980
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    if-ne p1, v5, :cond_6

    .line 1983
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v3, :cond_4

    .line 2016
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1984
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1985
    .local v0, "ch":C
    if-eq v0, v7, :cond_5

    if-eq v0, v8, :cond_5

    if-eq v0, v9, :cond_5

    .line 1986
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1983
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1988
    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1993
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :cond_6
    const/4 v2, 0x1

    .line 1995
    .local v2, "isLeading":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v3, :cond_3

    .line 1996
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1998
    .restart local v0    # "ch":C
    if-eq v0, v7, :cond_a

    if-eq v0, v8, :cond_a

    if-eq v0, v9, :cond_a

    if-eq v0, v6, :cond_a

    .line 1999
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2000
    const/4 v2, 0x0

    .line 1995
    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2005
    :cond_8
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2006
    if-eq v0, v7, :cond_9

    if-eq v0, v8, :cond_9

    if-eq v0, v9, :cond_9

    if-eq v0, v6, :cond_9

    .line 2010
    :goto_6
    add-int/lit8 v5, v3, -0x1

    if-ge v1, v5, :cond_7

    if-nez v2, :cond_7

    .line 2011
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 2004
    :cond_9
    add-int/lit8 v1, v1, 0x1

    :cond_a
    add-int/lit8 v5, v3, -0x1

    if-lt v1, v5, :cond_8

    goto :goto_6
.end method

.method private setBounded()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2451
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-ne v3, v6, :cond_4

    .line 2452
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_0

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    .line 2453
    :cond_0
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_3

    .line 2454
    :cond_1
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    .line 2488
    :cond_2
    :goto_0
    return-void

    .line 2457
    :cond_3
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    .line 2460
    :cond_4
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 2461
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 2462
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    .line 2463
    :cond_5
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    .line 2466
    :cond_6
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    .line 2470
    :cond_7
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 2472
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2473
    .local v2, "memberTypes":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/4 v0, 0x0

    .line 2475
    .local v0, "ancestorId":S
    array-length v3, v2

    if-lez v3, :cond_8

    .line 2476
    aget-object v3, v2, v5

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v0

    .line 2479
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_9

    .line 2485
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    .line 2480
    :cond_9
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getBounded()Z

    move-result v3

    if-eqz v3, :cond_a

    aget-object v3, v2, v1

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v3

    if-eq v0, v3, :cond_b

    .line 2481
    :cond_a
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    .line 2479
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setCardinality()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2501
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-ne v2, v4, :cond_9

    .line 2502
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    if-eqz v2, :cond_1

    .line 2503
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    .line 2545
    :cond_0
    :goto_0
    return-void

    .line 2506
    :cond_1
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    .line 2507
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3

    .line 2508
    :cond_2
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2510
    :cond_3
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_4

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 2511
    :cond_4
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_5

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    .line 2512
    :cond_5
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_6

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->specialCardinalityCheck()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2513
    :cond_6
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2516
    :cond_7
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2520
    :cond_8
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2524
    :cond_9
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 2525
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_a

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b

    .line 2526
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b

    .line 2527
    :cond_a
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2530
    :cond_b
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2534
    :cond_c
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2535
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2536
    .local v1, "memberTypes":[Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_d

    .line 2542
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2537
    :cond_d
    aget-object v2, v1, v0

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinite()Z

    move-result v2

    if-nez v2, :cond_e

    .line 2538
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2536
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setNumeric()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2431
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-ne v2, v5, :cond_1

    .line 2432
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    .line 2448
    :cond_0
    :goto_0
    return-void

    .line 2434
    :cond_1
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2435
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_0

    .line 2437
    :cond_2
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2438
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2439
    .local v1, "memberTypes":[Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_3

    .line 2445
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_0

    .line 2440
    :cond_3
    aget-object v2, v1, v0

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getNumeric()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2441
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_0

    .line 2439
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setOrdered()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2386
    iget-short v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-ne v7, v5, :cond_1

    .line 2387
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    .line 2428
    :cond_0
    :goto_0
    return-void

    .line 2391
    :cond_1
    iget-short v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 2392
    iput-short v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    .line 2398
    :cond_2
    iget-short v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 2399
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v4, v7

    .line 2401
    .local v4, "length":I
    if-nez v4, :cond_3

    .line 2402
    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    .line 2406
    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v6

    iget-short v7, v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v1

    .line 2407
    .local v1, "ancestorId":S
    if-eqz v1, :cond_5

    move v2, v5

    .line 2408
    .local v2, "commonAnc":Z
    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v6

    iget-short v7, v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    if-nez v7, :cond_6

    move v0, v5

    .line 2411
    .local v0, "allFalse":Z
    :goto_2
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_3
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v7, v7

    if-ge v3, v7, :cond_4

    if-nez v2, :cond_7

    if-nez v0, :cond_7

    .line 2417
    :cond_4
    if-eqz v2, :cond_c

    .line 2420
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v5, v5, v6

    iget-short v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    .end local v0    # "allFalse":Z
    .end local v2    # "commonAnc":Z
    .end local v3    # "i":I
    :cond_5
    move v2, v6

    .line 2407
    goto :goto_1

    .restart local v2    # "commonAnc":Z
    :cond_6
    move v0, v6

    .line 2408
    goto :goto_2

    .line 2412
    .restart local v0    # "allFalse":Z
    .restart local v3    # "i":I
    :cond_7
    if-eqz v2, :cond_8

    .line 2413
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v3

    iget-short v7, v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v7

    if-ne v1, v7, :cond_a

    move v2, v5

    .line 2414
    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    .line 2415
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v3

    iget-short v7, v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    if-nez v7, :cond_b

    move v0, v5

    .line 2411
    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move v2, v6

    .line 2413
    goto :goto_4

    :cond_b
    move v0, v6

    .line 2415
    goto :goto_5

    .line 2421
    :cond_c
    if-eqz v0, :cond_d

    .line 2422
    iput-short v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    .line 2424
    :cond_d
    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0
.end method

.method private specialCardinalityCheck()Z
    .locals 2

    .prologue
    .line 2491
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 2492
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 2493
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 2494
    :cond_0
    const/4 v0, 0x1

    .line 2496
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private whiteSpaceValue(S)Ljava/lang/String;
    .locals 1
    .param p1, "ws"    # S

    .prologue
    .line 2096
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 6
    .param p1, "facets"    # Lmf/org/apache/xerces/impl/dv/XSFacets;
    .param p2, "presentFacet"    # S
    .param p3, "fixedFacet"    # S
    .param p4, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    .prologue
    .line 736
    if-nez p4, :cond_0

    .line 737
    sget-object p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    .line 739
    :cond_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V

    .line 740
    return-void
.end method

.method applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 23
    .param p1, "facets"    # Lmf/org/apache/xerces/impl/dv/XSFacets;
    .param p2, "presentFacet"    # S
    .param p3, "fixedFacet"    # S
    .param p4, "patternType"    # S
    .param p5, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    .prologue
    .line 779
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1533
    :goto_0
    return-void

    .line 780
    :cond_0
    new-instance v18, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct/range {v18 .. v18}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    .line 789
    .local v18, "tempInfo":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 790
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 792
    const/16 v16, 0x0

    .line 795
    .local v16, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getAllowedFacets()S

    move-result v5

    .line 798
    .local v5, "allowedFacet":S
    and-int/lit8 v19, p2, 0x1

    if-eqz v19, :cond_1

    .line 799
    and-int/lit8 v19, v5, 0x1

    if-nez v19, :cond_3c

    .line 800
    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "length"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    :cond_1
    :goto_1
    and-int/lit8 v19, p2, 0x2

    if-eqz v19, :cond_2

    .line 811
    and-int/lit8 v19, v5, 0x2

    if-nez v19, :cond_3d

    .line 812
    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "minLength"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    :cond_2
    :goto_2
    and-int/lit8 v19, p2, 0x4

    if-eqz v19, :cond_3

    .line 823
    and-int/lit8 v19, v5, 0x4

    if-nez v19, :cond_3e

    .line 824
    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "maxLength"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    :cond_3
    :goto_3
    and-int/lit8 v19, p2, 0x8

    if-eqz v19, :cond_4

    .line 835
    and-int/lit8 v19, v5, 0x8

    if-nez v19, :cond_3f

    .line 836
    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "pattern"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 858
    :cond_4
    :goto_4
    and-int/lit8 v19, p2, 0x10

    if-eqz v19, :cond_5

    .line 859
    and-int/lit8 v19, v5, 0x10

    if-nez v19, :cond_40

    .line 860
    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "whiteSpace"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    :cond_5
    :goto_5
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 871
    and-int/lit16 v0, v5, 0x800

    move/from16 v19, v0

    if-nez v19, :cond_41

    .line 872
    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "enumeration"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    :cond_6
    :goto_6
    and-int/lit8 v19, p2, 0x20

    if-eqz v19, :cond_7

    .line 900
    and-int/lit8 v19, v5, 0x20

    if-nez v19, :cond_44

    .line 901
    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "maxInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    :cond_7
    :goto_7
    const/4 v13, 0x1

    .line 935
    .local v13, "needCheckBase":Z
    and-int/lit8 v19, p2, 0x40

    if-eqz v19, :cond_8

    .line 936
    and-int/lit8 v19, v5, 0x40

    if-nez v19, :cond_47

    .line 937
    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "maxExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    :cond_8
    :goto_8
    const/4 v13, 0x1

    .line 982
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 983
    and-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    if-nez v19, :cond_4c

    .line 984
    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "minExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    :cond_9
    :goto_9
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1029
    and-int/lit16 v0, v5, 0x100

    move/from16 v19, v0

    if-nez v19, :cond_51

    .line 1030
    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "minInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    :cond_a
    :goto_a
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1064
    and-int/lit16 v0, v5, 0x200

    move/from16 v19, v0

    if-nez v19, :cond_54

    .line 1065
    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "totalDigits"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1075
    :cond_b
    :goto_b
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1076
    and-int/lit16 v0, v5, 0x400

    move/from16 v19, v0

    if-nez v19, :cond_55

    .line 1077
    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "fractionDigits"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    :cond_c
    :goto_c
    if-eqz p4, :cond_d

    .line 1089
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 1093
    :cond_d
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    if-eqz v19, :cond_2e

    .line 1096
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_e

    .line 1098
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    .line 1099
    const-string v19, "minLength-less-than-equal-to-maxLength"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    :cond_e
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_f

    .line 1104
    const-string v19, "maxInclusive-maxExclusive"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    :cond_f
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 1109
    const-string v19, "minInclusive-minExclusive"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    :cond_10
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v16

    .line 1115
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    if-eqz v16, :cond_11

    .line 1116
    const-string v19, "minInclusive-less-than-equal-to-maxInclusive"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    :cond_11
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v16

    .line 1122
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    if-eqz v16, :cond_12

    .line 1123
    const-string v19, "minExclusive-less-than-equal-to-maxExclusive"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    :cond_12
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_13

    .line 1129
    const-string v19, "minExclusive-less-than-maxInclusive"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1133
    :cond_13
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    .line 1135
    const-string v19, "minInclusive-less-than-maxExclusive"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    :cond_14
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 1140
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 1141
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_15

    .line 1142
    const-string v19, "fractionDigits-totalDigits"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1147
    :cond_15
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_18

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_16

    .line 1149
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    .line 1151
    const-string v19, "length-minLength-maxLength.1.1"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1153
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_17

    .line 1154
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_17

    .line 1156
    const-string v19, "length-minLength-maxLength.2.1"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1158
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_18

    .line 1160
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    .line 1161
    const-string v19, "length-valid-restriction"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_19

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_1f

    .line 1167
    :cond_19
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_1c

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1a

    .line 1170
    const-string v19, "length-minLength-maxLength.1.1"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-nez v19, :cond_1b

    .line 1173
    const-string v19, "length-minLength-maxLength.1.2.a"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1c

    .line 1176
    const-string v19, "length-minLength-maxLength.1.2.b"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    :cond_1c
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_1f

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1d

    .line 1182
    const-string v19, "length-minLength-maxLength.2.1"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-nez v19, :cond_1e

    .line 1185
    const-string v19, "length-minLength-maxLength.2.2.a"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1f

    .line 1188
    const-string v19, "length-minLength-maxLength.2.2.b"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1194
    :cond_1f
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_20

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_56

    .line 1196
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_20

    .line 1197
    const-string v19, "minLength-less-than-equal-to-maxLength"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1214
    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_21

    .line 1215
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_21

    .line 1216
    const-string v19, "minLength-less-than-equal-to-maxLength"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    :cond_21
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_23

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_23

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_22

    .line 1224
    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "maxLength"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1226
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_23

    .line 1227
    const-string v19, "maxLength-valid-restriction"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1365
    :cond_23
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_25

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_25

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_24

    .line 1368
    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "totalDigits"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1370
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_25

    .line 1371
    const-string v19, "totalDigits-valid-restriction"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1377
    :cond_25
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_26

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_26

    .line 1379
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_26

    .line 1380
    const-string v19, "fractionDigits-totalDigits"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1386
    :cond_26
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_2a

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_58

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_28

    .line 1389
    :cond_27
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v19, v0

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    if-eqz v19, :cond_29

    .line 1390
    :cond_28
    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "fractionDigits"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1392
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2a

    .line 1393
    const-string v19, "fractionDigits-valid-restriction"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1405
    :cond_2a
    :goto_e
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_2e

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2b

    .line 1407
    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "whiteSpace"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceValue(S)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceValue(S)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1410
    :cond_2b
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    if-nez v19, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2c

    .line 1411
    const-string v19, "whiteSpace-valid-restriction.1"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "preserve"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1413
    :cond_2c
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d

    .line 1414
    const-string v19, "whiteSpace-valid-restriction.1"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "replace"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    :cond_2d
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    if-nez v19, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2e

    .line 1417
    const-string v19, "whiteSpace-valid-restriction.2"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1425
    :cond_2e
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_2f

    .line 1426
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1431
    :cond_2f
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-nez v19, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_30

    .line 1432
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1437
    :cond_30
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-nez v19, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_31

    .line 1438
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1443
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_32

    .line 1444
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-nez v19, :cond_59

    .line 1445
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 1468
    :cond_32
    :goto_f
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x10

    if-nez v19, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_33

    .line 1469
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1474
    :cond_33
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-nez v19, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-eqz v19, :cond_34

    .line 1475
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 1481
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_35

    .line 1482
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-nez v19, :cond_35

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-nez v19, :cond_35

    .line 1483
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x40

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1488
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_36

    .line 1489
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-nez v19, :cond_36

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-nez v19, :cond_36

    .line 1490
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1495
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_37

    .line 1496
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-nez v19, :cond_37

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-nez v19, :cond_37

    .line 1497
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1502
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_38

    .line 1503
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-nez v19, :cond_38

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-nez v19, :cond_38

    .line 1504
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1509
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_39

    .line 1510
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-nez v19, :cond_39

    .line 1511
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1516
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_3a

    .line 1517
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-nez v19, :cond_3a

    .line 1518
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1523
    :cond_3a
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v19, v0

    if-nez v19, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v19, v0

    if-eqz v19, :cond_3b

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 1528
    :cond_3b
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v20, v0

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 1531
    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    goto/16 :goto_0

    .line 802
    .end local v13    # "needCheckBase":Z
    :cond_3c
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->length:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 803
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 804
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 805
    and-int/lit8 v19, p3, 0x1

    if-eqz v19, :cond_1

    .line 806
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_1

    .line 814
    :cond_3d
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 815
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 816
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 817
    and-int/lit8 v19, p3, 0x2

    if-eqz v19, :cond_2

    .line 818
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_2

    .line 826
    :cond_3e
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLength:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 827
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 828
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 829
    and-int/lit8 v19, p3, 0x4

    if-eqz v19, :cond_3

    .line 830
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_3

    .line 838
    :cond_3f
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 839
    const/4 v14, 0x0

    .line 841
    .local v14, "regex":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    :try_start_0
    new-instance v15, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "X"

    invoke-interface/range {p5 .. p5}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getLocale()Ljava/util/Locale;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14    # "regex":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .local v15, "regex":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    move-object v14, v15

    .line 845
    .end local v15    # "regex":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v14    # "regex":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    :goto_10
    if-eqz v14, :cond_4

    .line 846
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 848
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 850
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 851
    and-int/lit8 v19, p3, 0x8

    if-eqz v19, :cond_4

    .line 852
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_4

    .line 842
    :catch_0
    move-exception v7

    .line 843
    .local v7, "e":Ljava/lang/Exception;
    const-string v19, "InvalidRegex"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 862
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v14    # "regex":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    :cond_40
    move-object/from16 v0, p1

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 863
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 864
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 865
    and-int/lit8 v19, p3, 0x10

    if-eqz v19, :cond_5

    .line 866
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_5

    .line 874
    :cond_41
    move-object/from16 v0, p1

    iget-object v9, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumeration:Ljava/util/Vector;

    .line 875
    .local v9, "enumVals":Ljava/util/Vector;
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v17

    .line 876
    .local v17, "size":I
    move/from16 v0, v17

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 877
    move-object/from16 v0, p1

    iget-object v8, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumNSDecls:Ljava/util/Vector;

    .line 878
    .local v8, "enumNSDecls":Ljava/util/Vector;
    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;

    move-object/from16 v0, p5

    invoke-direct {v6, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;-><init>(Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    .line 879
    .local v6, "ctx":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 880
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    .line 881
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_11
    move/from16 v0, v17

    if-lt v10, v0, :cond_42

    .line 892
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 893
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 894
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_6

    .line 882
    :cond_42
    if-eqz v8, :cond_43

    .line 883
    invoke-virtual {v8, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->setNSContext(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 885
    :cond_43
    :try_start_1
    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v6, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualEnumValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v12

    .line 887
    .local v12, "info":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    move/from16 v20, v0

    add-int/lit8 v21, v20, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    aput-object v12, v19, v20
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    .line 881
    .end local v12    # "info":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 888
    :catch_1
    move-exception v11

    .line 889
    .local v11, "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    const-string v19, "enumeration-valid-restriction"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    .line 903
    .end local v6    # "ctx":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;
    .end local v8    # "enumNSDecls":Ljava/util/Vector;
    .end local v9    # "enumVals":Ljava/util/Vector;
    .end local v10    # "i":I
    .end local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    .end local v17    # "size":I
    :cond_44
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 905
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 906
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 907
    and-int/lit8 v19, p3, 0x20

    if-eqz v19, :cond_45

    .line 908
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_3

    .line 916
    :cond_45
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_46

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_46

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    if-eqz v19, :cond_46

    .line 919
    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "maxInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    :cond_46
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_7

    .line 925
    :catch_2
    move-exception v11

    .line 926
    .restart local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    .line 928
    const-string v22, "maxInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 927
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 909
    .end local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :catch_3
    move-exception v11

    .line 910
    .restart local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    .line 912
    const-string v22, "maxInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 911
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 939
    .end local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    .restart local v13    # "needCheckBase":Z
    :cond_47
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 941
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 942
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x40

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 943
    and-int/lit8 v19, p3, 0x40

    if-eqz v19, :cond_48

    .line 944
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x40

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_5

    .line 952
    :cond_48
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_4a

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v16

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_49

    if-eqz v16, :cond_49

    .line 955
    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "maxExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    :cond_49
    if-nez v16, :cond_4a

    .line 958
    const/4 v13, 0x0

    .line 962
    :cond_4a
    if-eqz v13, :cond_4b

    .line 964
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_8

    .line 965
    :catch_4
    move-exception v11

    .line 966
    .restart local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    .line 968
    const-string v22, "maxExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 967
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 945
    .end local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :catch_5
    move-exception v11

    .line 946
    .restart local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    .line 948
    const-string v22, "maxExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 947
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 973
    .end local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_8

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    if-lez v19, :cond_8

    .line 975
    const-string v19, "maxExclusive-valid-restriction.2"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 986
    :cond_4c
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 988
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 989
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 990
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_4d

    .line 991
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_7

    .line 999
    :cond_4d
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_4f

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v16

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_4e

    if-eqz v16, :cond_4e

    .line 1002
    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "minExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1004
    :cond_4e
    if-nez v16, :cond_4f

    .line 1005
    const/4 v13, 0x0

    .line 1009
    :cond_4f
    if-eqz v13, :cond_50

    .line 1011
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_7
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_9

    .line 1012
    :catch_6
    move-exception v11

    .line 1013
    .restart local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    .line 1015
    const-string v22, "minExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 1014
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 992
    .end local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :catch_7
    move-exception v11

    .line 993
    .restart local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 994
    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    .line 995
    const-string v22, "minExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 994
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 1020
    .end local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    if-gez v19, :cond_9

    .line 1022
    const-string v19, "minExclusive-valid-restriction.3"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 1032
    :cond_51
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1034
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 1035
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1036
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_52

    .line 1037
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_8
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_8 .. :try_end_8} :catch_9

    .line 1045
    :cond_52
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_53

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_53

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    if-eqz v19, :cond_53

    .line 1048
    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "minInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    :cond_53
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_9
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_a

    .line 1054
    :catch_8
    move-exception v11

    .line 1055
    .restart local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    .line 1057
    const-string v22, "minInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 1056
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 1038
    .end local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :catch_9
    move-exception v11

    .line 1039
    .restart local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1040
    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    .line 1041
    const-string v22, "minInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 1040
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1067
    .end local v11    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :cond_54
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1068
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigits:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 1069
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1070
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1071
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_b

    .line 1079
    :cond_55
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigits:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 1080
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1081
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1082
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1083
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_c

    .line 1200
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_20

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_57

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_57

    .line 1202
    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "minLength"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1206
    :cond_57
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_20

    .line 1207
    const-string v19, "minLength-valid-restriction"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 1396
    :cond_58
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v19, v0

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    if-eqz v19, :cond_2a

    .line 1397
    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "fractionDigits"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "0"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 1451
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .restart local v10    # "i":I
    :goto_17
    if-gez v10, :cond_5a

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    if-eqz v19, :cond_32

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5b

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    :goto_18
    if-ltz v10, :cond_32

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    .line 1457
    add-int/lit8 v10, v10, -0x1

    goto :goto_18

    .line 1452
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1451
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_17

    .line 1462
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto/16 :goto_f
.end method

.method applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V
    .locals 7
    .param p1, "facets"    # Lmf/org/apache/xerces/impl/dv/XSFacets;
    .param p2, "presentFacet"    # S
    .param p3, "fixedFacet"    # S

    .prologue
    .line 748
    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 755
    return-void

    .line 749
    :catch_0
    move-exception v6

    .line 751
    .local v6, "e":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V
    .locals 7
    .param p1, "facets"    # Lmf/org/apache/xerces/impl/dv/XSFacets;
    .param p2, "presentFacet"    # S
    .param p3, "fixedFacet"    # S
    .param p4, "patternType"    # S

    .prologue
    .line 763
    :try_start_0
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 770
    return-void

    .line 764
    :catch_0
    move-exception v6

    .line 766
    .local v6, "e":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 4
    .param p1, "ancestorNS"    # Ljava/lang/String;
    .param p2, "ancestorName"    # Ljava/lang/String;
    .param p3, "derivation"    # S

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2593
    if-nez p2, :cond_1

    .line 2610
    :cond_0
    :goto_0
    return v1

    .line 2596
    :cond_1
    const-string v3, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2597
    const-string v3, "anyType"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 2598
    goto :goto_0

    .line 2602
    :cond_2
    move-object v0, p0

    .line 2603
    .local v0, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_1
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2604
    if-nez p1, :cond_3

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2605
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2606
    :cond_4
    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne v0, v3, :cond_6

    .line 2610
    :cond_5
    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 2607
    :cond_6
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    goto :goto_1
.end method

.method public derivedFromType(Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 4
    .param p1, "ancestor"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "derivation"    # S

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2568
    if-nez p1, :cond_2

    .line 2586
    :cond_0
    :goto_0
    return v1

    .line 2573
    :cond_1
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;

    .end local p1    # "ancestor":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    iget-object p1, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 2572
    .restart local p1    # "ancestor":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2
    instance-of v3, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;

    if-nez v3, :cond_1

    .line 2577
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    if-ne v3, p1, :cond_3

    move v1, v2

    .line 2578
    goto :goto_0

    .line 2581
    :cond_3
    move-object v0, p0

    .line 2582
    .local v0, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_1
    if-eq v0, p1, :cond_4

    .line 2583
    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne v0, v3, :cond_5

    .line 2586
    :cond_4
    if-ne v0, p1, :cond_0

    move v1, v2

    goto :goto_0

    .line 2584
    :cond_5
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    goto :goto_1
.end method

.method protected getActualEnumValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 1
    .param p1, "lexical"    # Ljava/lang/String;
    .param p2, "ctx"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .param p3, "info"    # Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1560
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validateWithInfo(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActualEnumeration()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-nez v0, :cond_0

    .line 2259
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 2282
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    return-object v0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 2373
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getAnonymous()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    return-object v0
.end method

.method public getBounded()Z
    .locals 1

    .prologue
    .line 2110
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    return v0
.end method

.method public getBuiltInKind()S
    .locals 1

    .prologue
    .line 680
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return v0
.end method

.method public getDefinedFacets()S
    .locals 2

    .prologue
    .line 2155
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v0, :cond_0

    .line 2156
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_1

    .line 2157
    :cond_0
    const/4 v0, 0x0

    .line 2165
    :goto_0
    return v0

    .line 2159
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v0, :cond_2

    .line 2160
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    goto :goto_0

    .line 2162
    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_3

    .line 2163
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x8

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    goto :goto_0

    .line 2165
    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    goto :goto_0
.end method

.method public getEnumerationItemTypeList()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 1

    .prologue
    .line 2290
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-nez v0, :cond_1

    .line 2291
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v0, :cond_0

    .line 2292
    const/4 v0, 0x0

    .line 2314
    :goto_0
    return-object v0

    .line 2294
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 2314
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    goto :goto_0
.end method

.method public getEnumerationTypeList()Lmf/org/apache/xerces/xs/ShortList;
    .locals 4

    .prologue
    .line 2318
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    if-nez v2, :cond_1

    .line 2319
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v2, :cond_0

    .line 2320
    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    .line 2328
    :goto_0
    return-object v2

    .line 2322
    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    new-array v1, v2, [S

    .line 2323
    .local v1, "list":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    if-lt v0, v2, :cond_2

    .line 2326
    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    invoke-direct {v2, v1, v3}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    .line 2328
    .end local v0    # "i":I
    .end local v1    # "list":[S
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0

    .line 2324
    .restart local v0    # "i":I
    .restart local v1    # "list":[S
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v2, v2, v0

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    aput-short v2, v1, v0

    .line 2323
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getFacet(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 4
    .param p1, "facetType"    # I

    .prologue
    .line 3178
    const/16 v3, 0x800

    if-eq p1, v3, :cond_0

    const/16 v3, 0x8

    if-ne p1, v3, :cond_4

    .line 3179
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    .line 3180
    .local v2, "list":Lmf/org/apache/xerces/xs/XSObjectList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 3196
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0

    .line 3181
    :cond_3
    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSMultiValueFacet;

    .line 3182
    .local v0, "f":Lmf/org/apache/xerces/xs/XSMultiValueFacet;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSMultiValueFacet;->getFacetKind()S

    move-result v3

    if-eq v3, p1, :cond_2

    .line 3180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3188
    .end local v0    # "f":Lmf/org/apache/xerces/xs/XSMultiValueFacet;
    .end local v1    # "i":I
    .end local v2    # "list":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getFacets()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    .line 3189
    .restart local v2    # "list":Lmf/org/apache/xerces/xs/XSObjectList;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3190
    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSFacet;

    .line 3191
    .local v0, "f":Lmf/org/apache/xerces/xs/XSFacet;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSFacet;->getFacetKind()S

    move-result v3

    if-eq v3, p1, :cond_2

    .line 3189
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getFacets()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 9

    .prologue
    .line 3044
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_b

    .line 3045
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-nez v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_b

    .line 3047
    :cond_0
    const/16 v0, 0xa

    new-array v8, v0, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3048
    .local v8, "facets":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;
    const/4 v7, 0x0

    .line 3049
    .local v7, "count":I
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 3050
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v0, :cond_1

    .line 3051
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    .line 3053
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3054
    const/16 v1, 0x10

    .line 3055
    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    aget-object v2, v2, v3

    .line 3056
    const/4 v3, 0x0

    .line 3057
    const/4 v4, 0x0

    .line 3058
    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    .line 3059
    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3053
    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3052
    aput-object v0, v8, v7

    .line 3060
    add-int/lit8 v7, v7, 0x1

    .line 3062
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3064
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3065
    const/4 v1, 0x1

    .line 3066
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3067
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 3068
    const/4 v4, 0x0

    .line 3069
    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    .line 3070
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3064
    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3063
    aput-object v0, v8, v7

    .line 3071
    add-int/lit8 v7, v7, 0x1

    .line 3073
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 3075
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3076
    const/4 v1, 0x2

    .line 3077
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3078
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 3079
    const/4 v4, 0x0

    .line 3080
    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    .line 3081
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3075
    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3074
    aput-object v0, v8, v7

    .line 3082
    add-int/lit8 v7, v7, 0x1

    .line 3084
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 3086
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3087
    const/4 v1, 0x4

    .line 3088
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3089
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 3090
    const/4 v4, 0x0

    .line 3091
    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    .line 3092
    :goto_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3086
    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3085
    aput-object v0, v8, v7

    .line 3093
    add-int/lit8 v7, v7, 0x1

    .line 3095
    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 3097
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3098
    const/16 v1, 0x200

    .line 3099
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3100
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 3101
    const/4 v4, 0x0

    .line 3102
    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    .line 3103
    :goto_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3097
    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3096
    aput-object v0, v8, v7

    .line 3104
    add-int/lit8 v7, v7, 0x1

    .line 3106
    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_11

    .line 3108
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3109
    const/16 v1, 0x400

    .line 3110
    const-string v2, "0"

    .line 3111
    const/4 v3, 0x0

    .line 3112
    const/4 v4, 0x0

    .line 3113
    const/4 v5, 0x1

    .line 3114
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3108
    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3107
    aput-object v0, v8, v7

    .line 3115
    add-int/lit8 v7, v7, 0x1

    .line 3128
    :cond_6
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 3130
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3131
    const/16 v1, 0x20

    .line 3132
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3133
    const/4 v3, 0x0

    .line 3134
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 3135
    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    .line 3136
    :goto_6
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3130
    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3129
    aput-object v0, v8, v7

    .line 3137
    add-int/lit8 v7, v7, 0x1

    .line 3139
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 3141
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3142
    const/16 v1, 0x40

    .line 3143
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3144
    const/4 v3, 0x0

    .line 3145
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 3146
    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    .line 3147
    :goto_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3141
    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3140
    aput-object v0, v8, v7

    .line 3148
    add-int/lit8 v7, v7, 0x1

    .line 3150
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 3152
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3153
    const/16 v1, 0x80

    .line 3154
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3155
    const/4 v3, 0x0

    .line 3156
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 3157
    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    .line 3158
    :goto_8
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3152
    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3151
    aput-object v0, v8, v7

    .line 3159
    add-int/lit8 v7, v7, 0x1

    .line 3161
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 3163
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3164
    const/16 v1, 0x100

    .line 3165
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3166
    const/4 v3, 0x0

    .line 3167
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 3168
    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    .line 3169
    :goto_9
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3163
    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3162
    aput-object v0, v8, v7

    .line 3170
    add-int/lit8 v7, v7, 0x1

    .line 3172
    :cond_a
    if-lez v7, :cond_17

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0, v8, v7}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_a
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 3174
    .end local v7    # "count":I
    .end local v8    # "facets":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;
    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_b
    return-object v0

    .line 3058
    .restart local v7    # "count":I
    .restart local v8    # "facets":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3069
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3080
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 3091
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 3102
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 3117
    :cond_11
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 3119
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3120
    const/16 v1, 0x400

    .line 3121
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3122
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 3123
    const/4 v4, 0x0

    .line 3124
    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    .line 3125
    :goto_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3119
    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3118
    aput-object v0, v8, v7

    .line 3126
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 3124
    :cond_12
    const/4 v5, 0x0

    goto :goto_c

    .line 3135
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 3146
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 3157
    :cond_15
    const/4 v5, 0x0

    goto :goto_8

    .line 3168
    :cond_16
    const/4 v5, 0x0

    goto :goto_9

    .line 3172
    :cond_17
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_a

    .line 3174
    .end local v7    # "count":I
    .end local v8    # "facets":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;
    :cond_18
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_b
.end method

.method public getFinal()S
    .locals 1

    .prologue
    .line 611
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    return v0
.end method

.method public getFinite()Z
    .locals 1

    .prologue
    .line 2117
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    return v0
.end method

.method public getFixedFacets()S
    .locals 2

    .prologue
    .line 2186
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 2187
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    .line 2188
    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto :goto_0
.end method

.method public getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 2

    .prologue
    .line 708
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 709
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 713
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;
    .locals 4

    .prologue
    .line 2241
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    if-nez v3, :cond_1

    .line 2242
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v3, :cond_0

    .line 2243
    sget-object v3, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    .line 2250
    :goto_0
    return-object v3

    .line 2244
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    .line 2245
    .local v1, "size":I
    new-array v2, v1, [Ljava/lang/String;

    .line 2246
    .local v2, "strs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 2248
    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    invoke-direct {v3, v2, v1}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    .line 2250
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "strs":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    goto :goto_0

    .line 2247
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    .restart local v2    # "strs":[Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 2246
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getLexicalFacetValue(S)Ljava/lang/String;
    .locals 4
    .param p1, "facetName"    # S

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 2204
    sparse-switch p1, :sswitch_data_0

    .line 2233
    :cond_0
    :goto_0
    return-object v0

    .line 2206
    :sswitch_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2208
    :sswitch_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2210
    :sswitch_2
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2212
    :sswitch_3
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v1, :cond_0

    .line 2213
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_0

    .line 2216
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    aget-object v0, v0, v1

    goto :goto_0

    .line 2218
    :sswitch_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2220
    :sswitch_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2222
    :sswitch_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2224
    :sswitch_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2226
    :sswitch_8
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2228
    :sswitch_9
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1

    .line 2229
    const-string v0, "0"

    goto :goto_0

    .line 2231
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2204
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_9
    .end sparse-switch
.end method

.method public getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;
    .locals 6

    .prologue
    const/16 v5, 0x18

    .line 2336
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v3, :cond_0

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    if-nez v3, :cond_0

    .line 2337
    sget-object v3, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    .line 2365
    :goto_0
    return-object v3

    .line 2338
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    if-nez v3, :cond_1

    .line 2339
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    if-nez v3, :cond_2

    const/4 v1, 0x0

    .line 2341
    .local v1, "size":I
    :goto_1
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 2342
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 2343
    .local v2, "strs":[Ljava/lang/String;
    const-string v3, "\\c+"

    aput-object v3, v2, v1

    .line 2361
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-lt v0, v1, :cond_7

    .line 2363
    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    array-length v4, v2

    invoke-direct {v3, v2, v4}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    .line 2365
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "strs":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    goto :goto_0

    .line 2339
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_1

    .line 2345
    .restart local v1    # "size":I
    :cond_3
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 2346
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 2347
    .restart local v2    # "strs":[Ljava/lang/String;
    const-string v3, "\\i\\c*"

    aput-object v3, v2, v1

    goto :goto_2

    .line 2349
    .end local v2    # "strs":[Ljava/lang/String;
    :cond_4
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 2350
    add-int/lit8 v3, v1, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 2351
    .restart local v2    # "strs":[Ljava/lang/String;
    const-string v3, "\\i\\c*"

    aput-object v3, v2, v1

    .line 2352
    add-int/lit8 v3, v1, 0x1

    const-string v4, "[\\i-[:]][\\c-[:]]*"

    aput-object v4, v2, v3

    goto :goto_2

    .line 2354
    .end local v2    # "strs":[Ljava/lang/String;
    :cond_5
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v3, v5, :cond_6

    .line 2355
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 2356
    .restart local v2    # "strs":[Ljava/lang/String;
    const-string v3, "[\\-+]?[0-9]+"

    aput-object v3, v2, v1

    goto :goto_2

    .line 2359
    .end local v2    # "strs":[Ljava/lang/String;
    :cond_6
    new-array v2, v1, [Ljava/lang/String;

    .restart local v2    # "strs":[Ljava/lang/String;
    goto :goto_2

    .line 2362
    .restart local v0    # "i":I
    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    .line 2361
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getMaxExclusiveValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3251
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxInclusiveValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3247
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    .prologue
    .line 723
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 724
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    .line 727
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getMinExclusiveValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3243
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMinInclusiveValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3239
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 8

    .prologue
    const/16 v3, 0x18

    .line 3204
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v2, :cond_4

    .line 3205
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_0

    .line 3206
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 3207
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v2, :cond_0

    .line 3208
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v2, v3, :cond_4

    .line 3210
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    .line 3211
    .local v1, "facets":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;
    const/4 v0, 0x0

    .line 3212
    .local v0, "count":I
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    .line 3213
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v2, :cond_1

    .line 3214
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v2, v3, :cond_2

    .line 3216
    :cond_1
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    .line 3217
    const/16 v3, 0x8

    .line 3218
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v4

    .line 3219
    const/4 v5, 0x0

    .line 3220
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 3216
    invoke-direct {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;-><init>(SLmf/org/apache/xerces/xs/StringList;Lmf/org/apache/xerces/xs/datatypes/ObjectList;Lmf/org/apache/xerces/xs/XSObjectList;)V

    .line 3215
    aput-object v2, v1, v0

    .line 3221
    add-int/lit8 v0, v0, 0x1

    .line 3223
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v2, :cond_3

    .line 3225
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    .line 3226
    const/16 v3, 0x800

    .line 3227
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v4

    .line 3228
    new-instance v5, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    invoke-direct {v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;-><init>([Ljava/lang/Object;I)V

    .line 3229
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 3225
    invoke-direct {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;-><init>(SLmf/org/apache/xerces/xs/StringList;Lmf/org/apache/xerces/xs/datatypes/ObjectList;Lmf/org/apache/xerces/xs/XSObjectList;)V

    .line 3224
    aput-object v2, v1, v0

    .line 3230
    add-int/lit8 v0, v0, 0x1

    .line 3232
    :cond_3
    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v2, v1, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 3234
    .end local v0    # "count":I
    .end local v1    # "facets":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v2, :cond_5

    .line 3235
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 3234
    :goto_0
    return-object v2

    .line 3235
    :cond_5
    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    .line 3023
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getNumeric()Z
    .locals 1

    .prologue
    .line 2124
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    return v0
.end method

.method public getOrdered()S
    .locals 1

    .prologue
    .line 2103
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    return v0
.end method

.method public getPrimitiveKind()S
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 654
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-ne v1, v0, :cond_3

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v1, :cond_3

    .line 655
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 670
    :cond_0
    :goto_0
    return v0

    .line 658
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    .line 659
    const/4 v0, 0x3

    goto :goto_0

    .line 665
    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    goto :goto_0

    .line 670
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrimitiveType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 3

    .prologue
    .line 689
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v1, :cond_1

    .line 690
    move-object v0, p0

    .line 692
    .local v0, "pri":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :goto_0
    iget-object v1, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne v1, v2, :cond_0

    .line 698
    .end local v0    # "pri":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :goto_1
    return-object v0

    .line 693
    .restart local v0    # "pri":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :cond_0
    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    .line 698
    .end local v0    # "pri":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x3

    return v0
.end method

.method public getTypeCategory()S
    .locals 1

    .prologue
    .line 595
    const/16 v0, 0x10

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3456
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariety()S
    .locals 1

    .prologue
    .line 628
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    goto :goto_0
.end method

.method public getWhitespace()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DatatypeException;
        }
    .end annotation

    .prologue
    .line 647
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 648
    new-instance v0, Lmf/org/apache/xerces/impl/dv/DatatypeException;

    const-string v1, "dt-whitespace"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/DatatypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 650
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    return v0
.end method

.method public isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "ancestorNS"    # Ljava/lang/String;
    .param p2, "ancestorName"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2630
    if-nez p2, :cond_1

    .line 2680
    :cond_0
    :goto_0
    return v0

    .line 2634
    :cond_1
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2635
    const-string v2, "anyType"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2636
    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_2

    .line 2637
    if-nez p3, :cond_3

    :cond_2
    move v0, v1

    .line 2638
    goto :goto_0

    .line 2642
    :cond_3
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_4

    .line 2643
    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 2644
    goto :goto_0

    .line 2649
    :cond_4
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_5

    .line 2650
    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 2651
    goto :goto_0

    .line 2656
    :cond_5
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_6

    .line 2657
    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 2658
    goto :goto_0

    .line 2663
    :cond_6
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_7

    .line 2664
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_7

    .line 2665
    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_7

    .line 2666
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_0

    .line 2673
    :cond_7
    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_0

    .line 2674
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_0

    .line 2675
    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_0

    .line 2676
    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_0

    .line 2677
    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDefinedFacet(S)Z
    .locals 5
    .param p1, "facetName"    # S

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2134
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v2, :cond_0

    .line 2135
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 2147
    :cond_1
    :goto_0
    return v0

    .line 2138
    :cond_2
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    .line 2141
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v2, :cond_3

    .line 2142
    if-eq p1, v4, :cond_1

    move v0, v1

    goto :goto_0

    .line 2144
    :cond_3
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v3, 0x18

    if-ne v2, v3, :cond_4

    .line 2145
    if-eq p1, v4, :cond_1

    const/16 v2, 0x400

    if-eq p1, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2147
    goto :goto_0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "typeNamespaceArg"    # Ljava/lang/String;
    .param p2, "typeNameArg"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I

    .prologue
    .line 3460
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    .line 1959
    if-nez p1, :cond_0

    .line 1960
    const/4 v0, 0x0

    .line 1962
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFinal(S)Z
    .locals 1
    .param p1, "derivation"    # S

    .prologue
    .line 615
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixedFacet(S)Z
    .locals 4
    .param p1, "facetName"    # S

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2175
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 2179
    :cond_0
    :goto_0
    return v0

    .line 2177
    :cond_1
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v3, 0x18

    if-ne v2, v3, :cond_2

    .line 2178
    const/16 v2, 0x400

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2179
    goto :goto_0
.end method

.method public isIDType()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 632
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v1, v2

    .line 643
    :cond_1
    :goto_0
    return v1

    .line 634
    :pswitch_0
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v4, 0x15

    if-eq v3, v4, :cond_1

    move v1, v2

    goto :goto_0

    .line 636
    :pswitch_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result v1

    goto :goto_0

    .line 638
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 639
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result v3

    if-nez v3, :cond_1

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    .line 1967
    if-nez p1, :cond_0

    .line 1968
    const/4 v0, 0x0

    .line 1970
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected normalize(Ljava/lang/Object;S)Ljava/lang/String;
    .locals 11
    .param p1, "content"    # Ljava/lang/Object;
    .param p2, "ws"    # S

    .prologue
    .line 2021
    if-nez p1, :cond_0

    .line 2022
    const/4 v9, 0x0

    .line 2084
    :goto_0
    return-object v9

    .line 2027
    :cond_0
    iget-short v9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_2

    .line 2028
    sget-object v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVNormalizeType:[S

    iget-short v10, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-short v6, v9, v10

    .line 2029
    .local v6, "norm_type":S
    if-nez v6, :cond_1

    .line 2030
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 2032
    :cond_1
    const/4 v9, 0x1

    if-ne v6, v9, :cond_2

    .line 2033
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 2037
    .end local v6    # "norm_type":S
    :cond_2
    instance-of v9, p1, Ljava/lang/StringBuffer;

    if-nez v9, :cond_3

    .line 2038
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2039
    .local v8, "strContent":Ljava/lang/String;
    invoke-static {v8, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/String;S)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .end local v8    # "strContent":Ljava/lang/String;
    :cond_3
    move-object v7, p1

    .line 2042
    check-cast v7, Ljava/lang/StringBuffer;

    .line 2043
    .local v7, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 2044
    .local v5, "len":I
    if-nez v5, :cond_4

    .line 2045
    const-string v9, ""

    goto :goto_0

    .line 2046
    :cond_4
    if-nez p2, :cond_5

    .line 2047
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 2049
    :cond_5
    const/4 v9, 0x1

    if-ne p2, v9, :cond_9

    .line 2052
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v5, :cond_6

    .line 2084
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 2053
    :cond_6
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 2054
    .local v0, "ch":C
    const/16 v9, 0x9

    if-eq v0, v9, :cond_7

    const/16 v9, 0xa

    if-eq v0, v9, :cond_7

    const/16 v9, 0xd

    if-ne v0, v9, :cond_8

    .line 2055
    :cond_7
    const/16 v9, 0x20

    invoke-virtual {v7, v1, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 2052
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2059
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :cond_9
    const/4 v3, 0x0

    .line 2060
    .local v3, "j":I
    const/4 v2, 0x1

    .line 2062
    .local v2, "isLeading":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_3
    if-lt v1, v5, :cond_a

    .line 2081
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2

    .line 2063
    :cond_a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 2065
    .restart local v0    # "ch":C
    const/16 v9, 0x9

    if-eq v0, v9, :cond_d

    const/16 v9, 0xa

    if-eq v0, v9, :cond_d

    const/16 v9, 0xd

    if-eq v0, v9, :cond_d

    const/16 v9, 0x20

    if-eq v0, v9, :cond_d

    .line 2066
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    invoke-virtual {v7, v4, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 2067
    const/4 v2, 0x0

    .line 2062
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_3

    .line 2072
    :cond_b
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 2073
    const/16 v9, 0x9

    if-eq v0, v9, :cond_c

    const/16 v9, 0xa

    if-eq v0, v9, :cond_c

    const/16 v9, 0xd

    if-eq v0, v9, :cond_c

    const/16 v9, 0x20

    if-eq v0, v9, :cond_c

    .line 2077
    :goto_5
    add-int/lit8 v9, v5, -0x1

    if-ge v1, v9, :cond_e

    if-nez v2, :cond_e

    .line 2078
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    const/16 v9, 0x20

    invoke-virtual {v7, v4, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_4

    .line 2071
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_c
    add-int/lit8 v1, v1, 0x1

    :cond_d
    add-int/lit8 v9, v5, -0x1

    if-lt v1, v9, :cond_b

    goto :goto_5

    :cond_e
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_4
.end method

.method reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    .prologue
    .line 2091
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 2966
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    .line 3017
    :goto_0
    return-void

    .line 2967
    :cond_0
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2968
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2970
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 2971
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 2972
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 2973
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2974
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 2975
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 2977
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 2978
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 2981
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 2982
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 2983
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 2984
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 2985
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 2986
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 2987
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 2988
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    .line 2989
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 2990
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    .line 2991
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    .line 2992
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 2993
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    .line 2994
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 2995
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 2996
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 2997
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 2998
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 2999
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3000
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3001
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3002
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3003
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3004
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3005
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 3006
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 3007
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3008
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3009
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3010
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3012
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 3013
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 3014
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public setAnonymous(Z)V
    .locals 0
    .param p1, "anon"    # Z

    .prologue
    .line 3255
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 3256
    return-void
.end method

.method protected setDVs([Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;)V
    .locals 0
    .param p1, "dvs"    # [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .prologue
    .line 239
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 240
    return-void
.end method

.method protected setListValues(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "finalSet"    # S
    .param p4, "itemType"    # Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .param p5, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x2

    .line 535
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 556
    .end local p0    # "this":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :goto_0
    return-object p0

    .line 536
    .restart local p0    # "this":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 538
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 539
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 540
    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 541
    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 543
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 544
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 545
    const/16 v0, 0x19

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 546
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 547
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 548
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 551
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 554
    const/16 v0, 0x2c

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    goto :goto_0
.end method

.method public setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0
    .param p1, "namespaceItem"    # Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .prologue
    .line 3027
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 3028
    return-void
.end method

.method protected setRestrictionValues(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1
    .param p1, "base"    # Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "finalSet"    # S
    .param p5, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;

    .prologue
    .line 481
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 528
    .end local p0    # "this":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :goto_0
    return-object p0

    .line 482
    .restart local p0    # "this":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 484
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 485
    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 486
    iput-short p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 487
    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 489
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 490
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 491
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch v0, :pswitch_data_0

    .line 504
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 505
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 506
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 507
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 508
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    .line 509
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 510
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    .line 511
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 512
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 517
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 518
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 519
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 520
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 523
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 526
    iget-short v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    goto/16 :goto_0

    .line 495
    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_1

    .line 498
    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_1

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setUnionValues(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "finalSet"    # S
    .param p4, "memberTypes"    # [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .param p5, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;

    .prologue
    .line 563
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 587
    .end local p0    # "this":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :goto_0
    return-object p0

    .line 564
    .restart local p0    # "this":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 566
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 567
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 568
    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 569
    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 571
    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 572
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 573
    const/16 v0, 0x1a

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 578
    const/16 v0, 0x10

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 579
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 582
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 585
    const/16 v0, 0x2d

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3034
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 3
    .param p1, "content"    # Ljava/lang/Object;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .param p3, "validatedInfo"    # Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1591
    if-nez p2, :cond_0

    .line 1592
    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    .line 1594
    :cond_0
    if-nez p3, :cond_1

    .line 1595
    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .end local p3    # "validatedInfo":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    .line 1600
    .restart local p3    # "validatedInfo":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 1601
    .local v0, "needNormalize":Z
    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    .line 1603
    .local v1, "ob":Ljava/lang/Object;
    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1605
    return-object v1

    .line 1597
    .end local v0    # "needNormalize":Z
    .end local v1    # "ob":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    .line 1600
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .param p3, "validatedInfo"    # Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1540
    if-nez p2, :cond_0

    .line 1541
    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    .line 1543
    :cond_0
    if-nez p3, :cond_1

    .line 1544
    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .end local p3    # "validatedInfo":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    .line 1549
    .restart local p3    # "validatedInfo":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 1550
    .local v0, "needNormalize":Z
    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    .line 1552
    .local v1, "ob":Ljava/lang/Object;
    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1554
    return-object v1

    .line 1546
    .end local v0    # "needNormalize":Z
    .end local v1    # "ob":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    .line 1549
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 2
    .param p1, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .param p2, "validatedInfo"    # Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1618
    if-nez p1, :cond_0

    .line 1619
    sget-object p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    .line 1622
    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1623
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v0, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 1624
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1628
    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needExtraChecking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1629
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1632
    :cond_2
    return-void
.end method

.method public validateWithInfo(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .param p3, "validatedInfo"    # Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1568
    if-nez p2, :cond_0

    .line 1569
    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    .line 1571
    :cond_0
    if-nez p3, :cond_1

    .line 1572
    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .end local p3    # "validatedInfo":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    .line 1577
    .restart local p3    # "validatedInfo":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 1578
    .local v0, "needNormalize":Z
    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    .line 1580
    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1582
    return-object p3

    .line 1574
    .end local v0    # "needNormalize":Z
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    .line 1577
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
