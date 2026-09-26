.class public Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;
.super Ljava/lang/Object;
.source "StartActivityCompat.java"


# static fields
.field private static appThreadIndex:I

.field private static callingFeatureIdIndex:I

.field private static callingPageIndex:I

.field private static flagsIndex:I

.field private static index:I

.field private static intentIndex:I

.field private static optionsIndex:I

.field private static profilerInfoIndex:I

.field private static requestCodeIndex:I

.field private static resolvedTypeIndex:I

.field private static resultToIndex:I

.field private static resultWhoIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isR()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 31
    sget v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->index:I

    add-int/lit8 v1, v0, 0x1

    sput v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->appThreadIndex:I

    add-int/lit8 v2, v0, 0x2

    .line 32
    sput v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->callingPageIndex:I

    add-int/lit8 v1, v0, 0x3

    .line 33
    sput v2, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->callingFeatureIdIndex:I

    add-int/lit8 v2, v0, 0x4

    .line 34
    sput v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->intentIndex:I

    add-int/lit8 v1, v0, 0x5

    .line 35
    sput v2, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resolvedTypeIndex:I

    add-int/lit8 v2, v0, 0x6

    .line 36
    sput v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resultToIndex:I

    add-int/lit8 v1, v0, 0x7

    .line 37
    sput v2, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resultWhoIndex:I

    add-int/lit8 v2, v0, 0x8

    .line 38
    sput v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->requestCodeIndex:I

    add-int/lit8 v1, v0, 0x9

    .line 39
    sput v2, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->flagsIndex:I

    add-int/lit8 v2, v0, 0xa

    .line 40
    sput v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->profilerInfoIndex:I

    add-int/lit8 v0, v0, 0xb

    .line 41
    sput v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->index:I

    sput v2, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->optionsIndex:I

    return-void

    .line 43
    :cond_37
    sget v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->index:I

    add-int/lit8 v1, v0, 0x1

    sput v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->appThreadIndex:I

    add-int/lit8 v2, v0, 0x2

    .line 44
    sput v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->callingPageIndex:I

    add-int/lit8 v1, v0, 0x3

    .line 45
    sput v2, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->intentIndex:I

    add-int/lit8 v2, v0, 0x4

    .line 46
    sput v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resolvedTypeIndex:I

    add-int/lit8 v1, v0, 0x5

    .line 47
    sput v2, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resultToIndex:I

    add-int/lit8 v2, v0, 0x6

    .line 48
    sput v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resultWhoIndex:I

    add-int/lit8 v1, v0, 0x7

    .line 49
    sput v2, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->requestCodeIndex:I

    add-int/lit8 v2, v0, 0x8

    .line 50
    sput v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->flagsIndex:I

    add-int/lit8 v1, v0, 0x9

    .line 51
    sput v2, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->profilerInfoIndex:I

    add-int/lit8 v0, v0, 0xa

    .line 52
    sput v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->index:I

    sput v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->optionsIndex:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppThreadIndex()I
    .registers 1

    .line 128
    sget v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->appThreadIndex:I

    return v0
.end method

.method public static getCallingPackage([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_d

    .line 64
    array-length v0, p0

    sget v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->callingPageIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_d

    .line 67
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCallingPageIndex()I
    .registers 1

    .line 136
    sget v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->callingPageIndex:I

    return v0
.end method

.method public static getFlags([Ljava/lang/Object;)I
    .registers 3

    if-eqz p0, :cond_11

    .line 106
    array-length v0, p0

    sget v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->flagsIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_11

    .line 109
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_11
    :goto_11
    const/4 p0, -0x1

    return p0
.end method

.method public static getFlagsIndex()I
    .registers 1

    .line 184
    sget v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->flagsIndex:I

    return v0
.end method

.method public static getIApplicationThread([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_b

    .line 57
    array-length v0, p0

    sget v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->appThreadIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_b

    .line 60
    :cond_8
    aget-object p0, p0, v1

    return-object p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntent([Ljava/lang/Object;)Landroid/content/Intent;
    .registers 3

    if-eqz p0, :cond_d

    .line 71
    array-length v0, p0

    sget v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->intentIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_d

    .line 74
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Landroid/content/Intent;

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntentIndex()I
    .registers 1

    .line 144
    sget v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->intentIndex:I

    return v0
.end method

.method public static getOptions([Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 3

    if-eqz p0, :cond_d

    .line 120
    array-length v0, p0

    sget v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->optionsIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_d

    .line 123
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOptionsIndex()I
    .registers 1

    .line 200
    sget v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->optionsIndex:I

    return v0
.end method

.method public static getProfilerInfo([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_b

    .line 113
    array-length v0, p0

    sget v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->profilerInfoIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_b

    .line 116
    :cond_8
    aget-object p0, p0, v1

    return-object p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getProfilerInfoIndex()I
    .registers 1

    .line 192
    sget v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->profilerInfoIndex:I

    return v0
.end method

.method public static getRequestCode([Ljava/lang/Object;)I
    .registers 3

    if-eqz p0, :cond_11

    .line 99
    array-length v0, p0

    sget v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->requestCodeIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_11

    .line 102
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_11
    :goto_11
    const/4 p0, -0x1

    return p0
.end method

.method public static getRequestCodeIndex()I
    .registers 1

    .line 176
    sget v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->requestCodeIndex:I

    return v0
.end method

.method public static getResolvedType([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_d

    .line 78
    array-length v0, p0

    sget v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resolvedTypeIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_d

    .line 81
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResolvedTypeIndex()I
    .registers 1

    .line 152
    sget v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resolvedTypeIndex:I

    return v0
.end method

.method public static getResultTo([Ljava/lang/Object;)Landroid/os/IBinder;
    .registers 3

    if-eqz p0, :cond_d

    .line 85
    array-length v0, p0

    sget v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resultToIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_d

    .line 88
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Landroid/os/IBinder;

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResultToIndex()I
    .registers 1

    .line 160
    sget v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resultToIndex:I

    return v0
.end method

.method public static getResultWho([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_d

    .line 92
    array-length v0, p0

    sget v1, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resultWhoIndex:I

    if-ge v0, v1, :cond_8

    goto :goto_d

    .line 95
    :cond_8
    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResultWhoIndex()I
    .registers 1

    .line 168
    sget v0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resultWhoIndex:I

    return v0
.end method

.method public static setAppThreadIndex(I)V
    .registers 1

    .line 132
    sput p0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->appThreadIndex:I

    return-void
.end method

.method public static setCallingPageIndex(I)V
    .registers 1

    .line 140
    sput p0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->callingPageIndex:I

    return-void
.end method

.method public static setFlagsIndex(I)V
    .registers 1

    .line 188
    sput p0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->flagsIndex:I

    return-void
.end method

.method public static setIntentIndex(I)V
    .registers 1

    .line 148
    sput p0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->intentIndex:I

    return-void
.end method

.method public static setOptionsIndex(I)V
    .registers 1

    .line 204
    sput p0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->optionsIndex:I

    return-void
.end method

.method public static setProfilerInfoIndex(I)V
    .registers 1

    .line 196
    sput p0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->profilerInfoIndex:I

    return-void
.end method

.method public static setRequestCodeIndex(I)V
    .registers 1

    .line 180
    sput p0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->requestCodeIndex:I

    return-void
.end method

.method public static setResolvedTypeIndex(I)V
    .registers 1

    .line 156
    sput p0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resolvedTypeIndex:I

    return-void
.end method

.method public static setResultToIndex(I)V
    .registers 1

    .line 164
    sput p0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resultToIndex:I

    return-void
.end method

.method public static setResultWhoIndex(I)V
    .registers 1

    .line 172
    sput p0, Ltop/niunaijun/blackbox/utils/compat/StartActivityCompat;->resultWhoIndex:I

    return-void
.end method
