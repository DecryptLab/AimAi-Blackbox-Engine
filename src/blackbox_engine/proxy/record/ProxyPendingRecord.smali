.class public final Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;
.super Ljava/lang/Object;
.source "ProxyPendingRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord$FillInData;
    }
.end annotation


# static fields
.field private static final EXTRA_FILL_IN:Ljava/lang/String; = "_B_|_pending_fill_in"

.field private static final EXTRA_PAYLOAD:Ljava/lang/String; = "_B_|_pending_payload"

.field private static final EXTRA_PREFIX:Ljava/lang/String; = "_B_|_pending_"

.field private static final EXTRA_RESOLVED_TYPES:Ljava/lang/String; = "_B_|_pending_types"

.field private static final EXTRA_ROUTE_ACTION:Ljava/lang/String; = "_B_|_pending_route"

.field private static final EXTRA_SIGNATURE:Ljava/lang/String; = "_B_|_pending_signature"

.field private static final EXTRA_TARGETS:Ljava/lang/String; = "_B_|_pending_targets"

.field private static final FILL_IN_FLAGS:I = 0x1ff

.field private static final FILL_IN_VERSION:I = 0x1

.field private static final MAX_FILL_IN_BYTES:I = 0x80000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExternalFillIn(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 138
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_c

    move-object v1, v0

    goto :goto_15

    :cond_c
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_15
    if-eqz v1, :cond_37

    .line 140
    const-string p0, "_B_|_pending_route"

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 141
    const-string p0, "_B_|_pending_payload"

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 142
    const-string p0, "_B_|_pending_signature"

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 143
    const-string p0, "_B_|_pending_targets"

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 144
    const-string p0, "_B_|_pending_types"

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 145
    const-string p0, "_B_|_pending_fill_in"

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    move-object v1, v0

    :cond_37
    :goto_37
    if-eqz v1, :cond_4a

    .line 150
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_40

    goto :goto_4a

    .line 153
    :cond_40
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4a
    :goto_4a
    return-object v0
.end method

.method public static createFillInCarrier(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_27

    .line 100
    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;->encodeFillIn(Landroid/content/Intent;Ljava/lang/String;)[B

    move-result-object p0

    .line 101
    array-length p1, p0

    const/high16 v0, 0x80000

    if-gt p1, v0, :cond_1f

    .line 104
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "_B_|_pending_fill_in"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 102
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PendingIntent fill-in exceeds Binder limit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PendingIntent fill-in contains file descriptors"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createStub(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    if-eqz p0, :cond_40

    .line 37
    iget-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->routeAction:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->payload:[B

    if-eqz v0, :cond_40

    iget-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->signature:[B

    if-eqz v0, :cond_40

    iget-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->intents:[Landroid/content/Intent;

    if-eqz v0, :cond_40

    .line 41
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->routeAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string p1, "_B_|_pending_route"

    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->routeAction:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string p1, "_B_|_pending_payload"

    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->payload:[B

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 45
    const-string p1, "_B_|_pending_signature"

    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->signature:[B

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 46
    const-string p1, "_B_|_pending_targets"

    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->intents:[Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    const-string p1, "_B_|_pending_types"

    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->resolvedTypes:[Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    .line 39
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incomplete PendingIntent route"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encodeFillIn(Landroid/content/Intent;Ljava/lang/String;)[B
    .registers 4

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 163
    :try_start_5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_17
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    throw p0
.end method

.method public static isImmutable(I)Z
    .registers 2

    const/high16 v0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static readFillIn(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord$FillInData;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 112
    :cond_4
    :try_start_4
    const-string v1, "_B_|_pending_fill_in"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_46

    .line 113
    array-length v1, p0

    if-eqz v1, :cond_46

    array-length v1, p0

    const/high16 v2, 0x80000

    if-le v1, v2, :cond_15

    goto :goto_46

    .line 116
    :cond_15
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_19} :catch_46

    .line 118
    :try_start_19
    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 119
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_41

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2c

    .line 125
    :try_start_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2b} :catch_46

    return-object v0

    .line 123
    :cond_2c
    :try_start_2c
    new-instance p0, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord$FillInData;

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord$FillInData;-><init>(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_41

    .line 125
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_41
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    throw p0
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :cond_46
    :goto_46
    return-object v0
.end method

.method public static readRoute(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/am/PendingIntentData;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 56
    :cond_4
    :try_start_4
    const-class v1, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 57
    const-string v1, "_B_|_pending_route"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 58
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_3c

    .line 61
    :cond_20
    new-instance v2, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    const-string v1, "_B_|_pending_payload"

    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    const-string v1, "_B_|_pending_signature"

    .line 63
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 64
    invoke-static {p0}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;->readTargets(Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v6

    const-string v1, "_B_|_pending_types"

    .line 65
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;-><init>(Ljava/lang/String;[B[B[Landroid/content/Intent;[Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_3b} :catch_3c

    return-object v2

    :catch_3c
    :cond_3c
    :goto_3c
    return-object v0
.end method

.method private static readTargets(Landroid/content/Intent;)[Landroid/content/Intent;
    .registers 6

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "_B_|_pending_targets"

    if-lt v0, v1, :cond_11

    .line 73
    const-class v0, Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/Intent;

    return-object p0

    .line 75
    :cond_11
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_19

    return-object v0

    .line 79
    :cond_19
    array-length v1, p0

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    .line 80
    :goto_1d
    array-length v3, p0

    if-ge v2, v3, :cond_2e

    .line 81
    aget-object v3, p0, v2

    instance-of v4, v3, Landroid/content/Intent;

    if-nez v4, :cond_27

    return-object v0

    .line 84
    :cond_27
    check-cast v3, Landroid/content/Intent;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2e
    return-object v1
.end method

.method public static sanitizeSystemFlags(I)I
    .registers 1

    and-int/lit16 p0, p0, -0x200

    return p0
.end method

###### Class top.niunaijun.blackbox.proxy.record.ProxyPendingRecord.FillInData (top.niunaijun.blackbox.proxy.record.ProxyPendingRecord$FillInData)
