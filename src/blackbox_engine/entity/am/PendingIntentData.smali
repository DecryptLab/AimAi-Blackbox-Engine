.class public final Ltop/niunaijun/blackbox/entity/am/PendingIntentData;
.super Ljava/lang/Object;
.source "PendingIntentData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/entity/am/PendingIntentData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final intents:[Landroid/content/Intent;

.field public final payload:[B

.field public final resolvedTypes:[Ljava/lang/String;

.field public final routeAction:Ljava/lang/String;

.field public final signature:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/am/PendingIntentData$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->routeAction:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->payload:[B

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->signature:[B

    .line 27
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->intents:[Landroid/content/Intent;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->resolvedTypes:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ltop/niunaijun/blackbox/entity/am/PendingIntentData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[B[Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 6

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->routeAction:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p2, :cond_a

    move-object p2, p1

    goto :goto_10

    .line 17
    :cond_a
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    :goto_10
    iput-object p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->payload:[B

    if-nez p3, :cond_16

    move-object p2, p1

    goto :goto_1c

    .line 18
    :cond_16
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    :goto_1c
    iput-object p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->signature:[B

    .line 19
    invoke-static {p4}, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->copyIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->intents:[Landroid/content/Intent;

    if-nez p5, :cond_27

    goto :goto_2d

    .line 20
    :cond_27
    invoke-virtual {p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_2d
    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->resolvedTypes:[Ljava/lang/String;

    return-void
.end method

.method private static copyIntents([Landroid/content/Intent;)[Landroid/content/Intent;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 49
    :cond_4
    array-length v1, p0

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    .line 50
    :goto_8
    array-length v3, p0

    if-ge v2, v3, :cond_1d

    .line 51
    aget-object v3, p0, v2

    if-nez v3, :cond_11

    move-object v3, v0

    goto :goto_18

    :cond_11
    new-instance v3, Landroid/content/Intent;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_18
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 38
    iget-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->routeAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->payload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 40
    iget-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->signature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 41
    iget-object v0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->intents:[Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 42
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->resolvedTypes:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method

###### Class top.niunaijun.blackbox.entity.am.PendingIntentData.AnonymousClass1 (top.niunaijun.blackbox.entity.am.PendingIntentData$1)
