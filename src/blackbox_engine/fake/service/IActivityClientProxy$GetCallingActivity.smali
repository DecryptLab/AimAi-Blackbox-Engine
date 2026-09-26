.class public Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy$GetCallingActivity;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityClientProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetCallingActivity"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getCallingActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 p0, 0x0

    .line 126
    aget-object p0, p3, p0

    check-cast p0, Landroid/os/IBinder;

    .line 127
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object p1

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getCallingActivity(Landroid/os/IBinder;I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityClientProxy.GetCallingPackage (top.niunaijun.blackbox.fake.service.IActivityClientProxy$GetCallingPackage)
