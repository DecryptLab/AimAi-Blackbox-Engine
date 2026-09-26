.class public Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy$Set;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IAlarmManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Set"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "set"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private static isExactAlarm([Ljava/lang/Object;)Z
    .registers 5

    if-eqz p0, :cond_1a

    .line 67
    array-length v0, p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1a

    aget-object p0, p0, v1

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    check-cast p0, Ljava/lang/Long;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    invoke-static {p3}, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;->-$$Nest$smreplaceCallingPackage([Ljava/lang/Object;)V

    .line 53
    :try_start_3
    invoke-static {p1, p2, p3}, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;->-$$Nest$sminvokeService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    .line 55
    invoke-static {p3}, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy$Set;->isExactAlarm([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-wide/16 v0, -0x1

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x3

    aput-object p0, p3, v0

    .line 59
    invoke-static {}, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;->-$$Nest$sfgetsExactAlarmFallbackLogged()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 60
    const-string p0, "IAlarmManagerProxy"

    const-string v0, "Exact-alarm access denied; using an inexact alarm"

    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_2b
    invoke-static {p1, p2, p3}, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;->-$$Nest$sminvokeService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 56
    :cond_30
    throw p0
.end method
