.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$RegisterReceiver;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterReceiver"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "registerReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 654
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private static ensureReceiverExportFlag(Ljava/lang/reflect/Method;[Ljava/lang/Object;I)V
    .registers 6

    .line 704
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isTiramisu()Z

    move-result v0

    if-eqz v0, :cond_4f

    aget-object p2, p1, p2

    if-nez p2, :cond_b

    goto :goto_4f

    .line 707
    :cond_b
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    .line 709
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_1e

    .line 710
    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1b

    goto :goto_1f

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_1e
    const/4 v0, -0x1

    :goto_1f
    if-ltz v0, :cond_3a

    .line 715
    aget-object p2, p1, v0

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_3a

    .line 718
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p2, p0, 0x6

    if-nez p2, :cond_4f

    or-int/lit8 p0, p0, 0x2

    .line 721
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v0

    return-void

    .line 716
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported receiver flags signature: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    :goto_4f
    return-void
.end method

.method private static getRequiredPermissionIndex(Ljava/lang/reflect/Method;)I
    .registers 4

    .line 690
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 691
    const-class v1, Landroid/content/IntentFilter;

    invoke-static {p0, v1}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$RegisterReceiver;->requireParameterIndex(Ljava/lang/reflect/Method;Ljava/lang/Class;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 693
    array-length v2, v0

    if-ge v1, v2, :cond_16

    aget-object v0, v0, v1

    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_16

    return v1

    .line 695
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported receiver permission signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static requireParameterIndex(Ljava/lang/reflect/Method;Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 681
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 680
    invoke-static {v0, p1}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getParamsIndex([Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_b

    return v0

    .line 683
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " parameter: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 658
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 659
    const-class p0, Landroid/content/IIntentReceiver;

    invoke-static {p2, p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$RegisterReceiver;->requireParameterIndex(Ljava/lang/reflect/Method;Ljava/lang/Class;)I

    move-result p0

    .line 660
    aget-object v0, p3, p0

    if-eqz v0, :cond_2a

    .line 661
    check-cast v0, Landroid/content/IIntentReceiver;

    .line 662
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/delegate/InnerReceiverDelegate;->createProxy(Landroid/content/IIntentReceiver;)Landroid/content/IIntentReceiver;

    move-result-object v1

    .line 664
    invoke-static {v0}, Lblack/android/app/BRLoadedApkReceiverDispatcherInnerReceiver;->get(Ljava/lang/Object;)Lblack/android/app/LoadedApkReceiverDispatcherInnerReceiverContext;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/app/LoadedApkReceiverDispatcherInnerReceiverContext;->mDispatcher()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 666
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lblack/android/app/BRLoadedApkReceiverDispatcher;->get(Ljava/lang/Object;)Lblack/android/app/LoadedApkReceiverDispatcherContext;

    move-result-object v0

    invoke-interface {v0, v1}, Lblack/android/app/LoadedApkReceiverDispatcherContext;->_set_mIIntentReceiver(Ljava/lang/Object;)V

    .line 669
    :cond_28
    aput-object v1, p3, p0

    .line 671
    :cond_2a
    invoke-static {p2}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$RegisterReceiver;->getRequiredPermissionIndex(Ljava/lang/reflect/Method;)I

    move-result v0

    .line 672
    aget-object v1, p3, v0

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    .line 673
    aput-object v1, p3, v0

    .line 675
    :cond_35
    invoke-static {p2, p3, p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$RegisterReceiver;->ensureReceiverExportFlag(Ljava/lang/reflect/Method;[Ljava/lang/Object;I)V

    .line 676
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.RegisterReceiverWithFeature (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$RegisterReceiverWithFeature)
