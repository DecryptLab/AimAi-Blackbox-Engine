.class public Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IAlarmManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy$HostPackage;,
        Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy$Set;
    }
.end annotation


# static fields
.field private static final CALLING_PACKAGE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IAlarmManagerProxy"

.field private static final WINDOW_HEURISTIC:J = -0x1L

.field private static final WINDOW_LENGTH_INDEX:I = 0x3

.field private static final sExactAlarmFallbackLogged:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsExactAlarmFallbackLogged()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;->sExactAlarmFallbackLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sminvokeService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;->invokeService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smreplaceCallingPackage([Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;->replaceCallingPackage([Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;->sExactAlarmFallbackLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "alarm"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private static invokeService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_e

    :cond_d
    move-object p0, p1

    .line 95
    :goto_e
    throw p0
.end method

.method private static replaceCallingPackage([Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_12

    .line 84
    array-length v0, p0

    if-lez v0, :cond_12

    const/4 v0, 0x0

    aget-object v1, p0, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 86
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_12
    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 39
    invoke-static {}, Lblack/android/app/BRIAlarmManagerStub;->get()Lblack/android/app/IAlarmManagerStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "alarm"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/app/IAlarmManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 44
    const-string p1, "alarm"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IAlarmManagerProxy.HostPackage (top.niunaijun.blackbox.fake.service.IAlarmManagerProxy$HostPackage)
