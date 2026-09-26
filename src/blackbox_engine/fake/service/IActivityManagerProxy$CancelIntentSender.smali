.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$CancelIntentSender;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelIntentSender"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "cancelIntentSender"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 598
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 602
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    const-string v0, "android.content.IIntentSender"

    .line 601
    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smrequireNamedParameterIndex([Ljava/lang/Class;Ljava/lang/String;)I

    move-result p0

    .line 603
    aget-object p0, p3, p0

    .line 604
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 605
    instance-of p2, p0, Landroid/os/IInterface;

    if-eqz p2, :cond_21

    .line 606
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object p2

    check-cast p0, Landroid/os/IInterface;

    .line 607
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 606
    invoke-virtual {p2, p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->cancelIntentSender(Landroid/os/IBinder;)V

    :cond_21
    return-object p1
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.CheckPermissionForDevice (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$CheckPermissionForDevice)
