.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$getUidForIntentSender;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getUidForIntentSender"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getUidForIntentSender"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 464
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    .line 467
    aget-object p0, p3, p0

    check-cast p0, Landroid/os/IInterface;

    .line 468
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object p1

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getUidForIntentSender(Landroid/os/IBinder;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.registerUidObserver (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$registerUidObserver)
