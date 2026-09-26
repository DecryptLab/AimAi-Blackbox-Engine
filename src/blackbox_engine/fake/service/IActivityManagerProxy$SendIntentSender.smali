.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$SendIntentSender;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendIntentSender"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "sendIntentSender"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 570
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 574
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 575
    const-string v0, "android.content.IIntentSender"

    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smrequireNamedParameterIndex([Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    .line 577
    aget-object v0, p3, v0

    .line 578
    instance-of v1, v0, Landroid/os/IInterface;

    if-nez v1, :cond_15

    .line 579
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 582
    :cond_15
    check-cast v0, Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 583
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getTypeForIntentSender(Landroid/os/IBinder;)I

    move-result v0

    .line 584
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smisRoutedPendingIntentType(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 585
    const-class v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smrequireParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result v0

    .line 586
    const-class v1, Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v1, v2}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smrequireParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result p0

    .line 588
    aget-object v1, p3, v0

    check-cast v1, Landroid/content/Intent;

    .line 589
    aget-object v2, p3, p0

    check-cast v2, Ljava/lang/String;

    .line 590
    invoke-static {v1, v2}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;->createFillInCarrier(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x0

    .line 591
    aput-object v0, p3, p0

    .line 593
    :cond_49
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.SetServiceForeground (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$SetServiceForeground)
