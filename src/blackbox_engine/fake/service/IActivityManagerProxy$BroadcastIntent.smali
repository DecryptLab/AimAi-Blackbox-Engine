.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BroadcastIntent;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastIntent"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "broadcastIntent"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 485
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private replaceBroadcastUserId(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 5

    .line 509
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 510
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    :goto_7
    if-ltz p1, :cond_21

    .line 511
    aget-object v0, p0, p1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1e

    .line 512
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUid()I

    move-result p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, p1

    return-void

    :cond_1e
    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    :cond_21
    return-void
.end method


# virtual methods
.method getIntentIndex([Ljava/lang/Object;)I
    .registers 3

    const/4 p0, 0x0

    .line 519
    :goto_1
    array-length v0, p1

    if-ge p0, v0, :cond_e

    .line 520
    aget-object v0, p1, p0

    .line 521
    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_b

    return p0

    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 488
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BroadcastIntent;->getIntentIndex([Ljava/lang/Object;)I

    move-result v0

    .line 489
    aget-object v1, p3, v0

    check-cast v1, Landroid/content/Intent;

    add-int/lit8 v2, v0, 0x1

    .line 490
    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    .line 491
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v3

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 493
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 494
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-static {v2, v1, v3}, Ltop/niunaijun/blackbox/proxy/record/ProxyBroadcastRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;I)V

    .line 495
    aput-object v2, p3, v0

    :cond_30
    const/4 v0, 0x0

    .line 498
    :goto_31
    array-length v1, p3

    if-ge v0, v1, :cond_40

    .line 499
    aget-object v1, p3, v0

    .line 500
    instance-of v1, v1, [Ljava/lang/String;

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    .line 501
    aput-object v1, p3, v0

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 504
    :cond_40
    invoke-direct {p0, p2, p3}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BroadcastIntent;->replaceBroadcastUserId(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 505
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.BroadcastIntentWithFeature (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$BroadcastIntentWithFeature)
