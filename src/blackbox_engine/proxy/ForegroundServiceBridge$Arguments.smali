.class final Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;
.super Ljava/lang/Object;
.source "ForegroundServiceBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Arguments"
.end annotation


# instance fields
.field private final componentIndex:I

.field private final foregroundServiceTypeIndex:I

.field private final notificationIdIndex:I

.field private final notificationIndex:I

.field private final tokenIndex:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcomponentIndex(Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;)I
    .registers 1

    iget p0, p0, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->componentIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetforegroundServiceTypeIndex(Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;)I
    .registers 1

    iget p0, p0, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->foregroundServiceTypeIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationIdIndex(Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;)I
    .registers 1

    iget p0, p0, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->notificationIdIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationIndex(Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;)I
    .registers 1

    iget p0, p0, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->notificationIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettokenIndex(Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;)I
    .registers 1

    iget p0, p0, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->tokenIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$smfrom(Ljava/lang/reflect/Method;)Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;
    .registers 1

    invoke-static {p0}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->from(Ljava/lang/reflect/Method;)Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(IIIII)V
    .registers 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->componentIndex:I

    .line 53
    iput p2, p0, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->tokenIndex:I

    .line 54
    iput p3, p0, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->notificationIdIndex:I

    .line 55
    iput p4, p0, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->notificationIndex:I

    .line 56
    iput p5, p0, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->foregroundServiceTypeIndex:I

    return-void
.end method

.method private static find([Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 76
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method private static findForegroundServiceType([Ljava/lang/Class;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    .line 95
    :goto_5
    array-length v3, p0

    if-ge p1, v3, :cond_14

    .line 96
    aget-object v3, p0, p1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_11

    add-int/lit8 v1, v1, 0x1

    move v2, p1

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_14
    const/4 p0, 0x2

    if-lt v1, p0, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method private static findLastIntBefore([Ljava/lang/Class;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_e

    .line 85
    aget-object v0, p0, p1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_b

    return p1

    :cond_b
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_e
    const/4 p0, -0x1

    return p0
.end method

.method private static from(Ljava/lang/reflect/Method;)Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;
    .registers 9

    .line 60
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 61
    const-class v1, Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->find([Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v3

    .line 62
    const-class v1, Landroid/os/IBinder;

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->find([Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v4

    .line 63
    const-class v1, Landroid/app/Notification;

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->find([Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v6

    .line 64
    invoke-static {v0, v6}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->findLastIntBefore([Ljava/lang/Class;I)I

    move-result v5

    .line 65
    invoke-static {v0, v6}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;->findForegroundServiceType([Ljava/lang/Class;I)I

    move-result v7

    if-ltz v3, :cond_2c

    if-ltz v4, :cond_2c

    if-ltz v6, :cond_2c

    if-ltz v5, :cond_2c

    .line 70
    new-instance v2, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;

    invoke-direct/range {v2 .. v7}, Ltop/niunaijun/blackbox/proxy/ForegroundServiceBridge$Arguments;-><init>(IIIII)V

    return-object v2

    .line 68
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported setServiceForeground signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
