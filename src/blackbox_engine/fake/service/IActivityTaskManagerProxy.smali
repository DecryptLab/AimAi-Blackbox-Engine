.class public Ltop/niunaijun/blackbox/fake/service/IActivityTaskManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IActivityTaskManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IActivityTaskManagerProxy$SetTaskDescription;
    }
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ScanClass;
    value = {
        Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "activity_task"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 35
    invoke-static {}, Lblack/android/app/BRIActivityTaskManagerStub;->get()Lblack/android/app/IActivityTaskManagerStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "activity_task"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/app/IActivityTaskManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 40
    const-string p1, "activity_task"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IActivityTaskManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lblack/android/app/BRActivityTaskManager;->get()Lblack/android/app/ActivityTaskManagerStatic;

    move-result-object p1

    invoke-interface {p1}, Lblack/android/app/ActivityTaskManagerStatic;->getService()Ljava/lang/Object;

    .line 42
    invoke-static {}, Lblack/android/app/BRActivityTaskManager;->get()Lblack/android/app/ActivityTaskManagerStatic;

    move-result-object p1

    invoke-interface {p1}, Lblack/android/app/ActivityTaskManagerStatic;->IActivityTaskManagerSingleton()Ljava/lang/Object;

    move-result-object p1

    .line 43
    invoke-static {p1}, Lblack/android/util/BRSingleton;->get(Ljava/lang/Object;)Lblack/android/util/SingletonContext;

    move-result-object p1

    invoke-static {}, Lblack/android/app/BRIActivityTaskManagerStub;->get()Lblack/android/app/IActivityTaskManagerStubStatic;

    move-result-object p2

    invoke-interface {p2, p0}, Lblack/android/app/IActivityTaskManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    invoke-interface {p1, p0}, Lblack/android/util/SingletonContext;->_set_mInstance(Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityTaskManagerProxy.SetTaskDescription (top.niunaijun.blackbox.fake.service.IActivityTaskManagerProxy$SetTaskDescription)
