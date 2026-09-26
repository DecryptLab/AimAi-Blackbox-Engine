.class public Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IJobServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy$Enqueue;,
        Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy$CancelAllInNamespace;,
        Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy$CancelAll;,
        Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy$Cancel;,
        Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy$Schedule;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "JobServiceStub"


# direct methods
.method static bridge synthetic -$$Nest$smrequireArgumentIndex([Ljava/lang/Object;Ljava/lang/Class;)I
    .registers 2

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;->requireArgumentIndex([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smrequireJobIdIndex([Ljava/lang/Object;)I
    .registers 1

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;->requireJobIdIndex([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 47
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private static requireArgumentIndex([Ljava/lang/Object;Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getIndex([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p0

    if-ltz p0, :cond_7

    return p0

    .line 32
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " argument"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static requireJobIdIndex([Ljava/lang/Object;)I
    .registers 3

    .line 38
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_f

    .line 39
    aget-object v1, p0, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 43
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing job ID argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 2

    .line 52
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object p0

    const-string v0, "jobscheduler"

    invoke-interface {p0, v0}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 53
    invoke-static {}, Lblack/android/app/job/BRIJobSchedulerStub;->get()Lblack/android/app/job/IJobSchedulerStubStatic;

    move-result-object v0

    invoke-interface {v0, p0}, Lblack/android/app/job/IJobSchedulerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 58
    const-string p1, "jobscheduler"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IJobServiceProxy.Cancel (top.niunaijun.blackbox.fake.service.IJobServiceProxy$Cancel)
