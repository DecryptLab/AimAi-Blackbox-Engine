.class public Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$GetLaunchedFromUid;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityClientProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLaunchedFromUid"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getLaunchedFromUid"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    .line 150
    aget-object p0, p3, p0

    check-cast p0, Landroid/os/IBinder;

    .line 151
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    .line 152
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v1

    .line 151
    invoke-virtual {v0, p0, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_19

    .line 154
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 156
    :cond_19
    invoke-static {}, Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;->-$$Nest$smgetVirtualUidFallback()I

    move-result p0

    if-ne p0, v0, :cond_24

    .line 157
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityClientProxy.SetTaskDescription (top.niunaijun.blackbox.fake.service.IActivityClientProxy$SetTaskDescription)
