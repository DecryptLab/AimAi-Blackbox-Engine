.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$UnbindService;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnbindService"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "unbindService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 341
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    .line 345
    aget-object v0, p3, p0

    check-cast v0, Landroid/app/IServiceConnection;

    if-nez v0, :cond_c

    .line 347
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 349
    :cond_c
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v1

    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->unbindService(Landroid/os/IBinder;I)V

    .line 350
    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;->getDelegate(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 352
    aput-object v0, p3, p0

    .line 354
    :cond_27
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.UpdateConfiguration (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$UpdateConfiguration)
