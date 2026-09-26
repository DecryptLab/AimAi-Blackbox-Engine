.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$PeekService;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeekService"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "peekService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 557
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

    .line 561
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceLastAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x0

    .line 562
    aget-object p0, p3, p0

    check-cast p0, Landroid/content/Intent;

    const/4 p1, 0x1

    .line 563
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 564
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object p2

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result p3

    invoke-virtual {p2, p0, p1, p3}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.PublishService (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$PublishService)
