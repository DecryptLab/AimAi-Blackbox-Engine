.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetIntentSender;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetIntentSender"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getIntentSender"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 385
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method

.method private static getFeatureId([Ljava/lang/Class;[Ljava/lang/Object;I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    add-int/lit8 p2, p2, 0x1

    .line 434
    array-length v0, p0

    if-ge p2, v0, :cond_10

    aget-object p0, p0, p2

    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_10

    .line 435
    aget-object p0, p1, p2

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getProxyClassName(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_36

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_28

    const/4 v0, 0x5

    if-ne p0, v0, :cond_13

    .line 447
    const-class p0, Ltop/niunaijun/blackbox/proxy/ProxyPendingForegroundService;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 449
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported PendingIntent type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_28
    const-class p0, Ltop/niunaijun/blackbox/proxy/ProxyPendingService;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 443
    :cond_2f
    const-class p0, Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 441
    :cond_36
    const-class p0, Ltop/niunaijun/blackbox/proxy/ProxyPendingReceiver;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p3

    .line 388
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 389
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smrequireParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result v2

    .line 390
    const-class v4, Ljava/lang/String;

    invoke-static {v1, v4, v3}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smrequireParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result v4

    .line 391
    const-class v5, [Landroid/content/Intent;

    invoke-static {v1, v5, v3}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smrequireParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result v5

    .line 392
    const-class v6, [Ljava/lang/String;

    invoke-static {v1, v6, v3}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smrequireParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result v6

    .line 393
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v7, v5}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smrequirePreviousParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result v7

    .line 395
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    add-int/lit8 v9, v6, 0x1

    invoke-static {v1, v8, v9}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smrequireParameterIndex([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result v8

    .line 398
    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 399
    aget-object v2, v0, v4

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 400
    invoke-static {v1, v0, v4}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetIntentSender;->getFeatureId([Ljava/lang/Class;[Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v12

    .line 401
    aget-object v1, v0, v7

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 402
    aget-object v1, v0, v8

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 404
    invoke-static {v10}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;->-$$Nest$smisRoutedPendingIntentType(I)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 405
    aget-object v1, v0, v5

    move-object v15, v1

    check-cast v15, [Landroid/content/Intent;

    .line 406
    aget-object v1, v0, v6

    move-object/from16 v16, v1

    check-cast v16, [Ljava/lang/String;

    .line 407
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v9

    .line 409
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getCallingBUid()I

    move-result v13

    .line 408
    invoke-virtual/range {v9 .. v17}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->createPendingIntentData(ILjava/lang/String;Ljava/lang/String;II[Landroid/content/Intent;[Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    move-result-object v1

    move/from16 v2, v17

    if-eqz v1, :cond_90

    .line 414
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v7

    .line 415
    invoke-static {v10}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetIntentSender;->getProxyClassName(I)Ljava/lang/String;

    move-result-object v9

    .line 414
    invoke-static {v1, v7, v9}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;->createStub(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v7, 0x1

    .line 416
    new-array v7, v7, [Landroid/content/Intent;

    aput-object v1, v7, v3

    aput-object v7, v0, v5

    const/4 v1, 0x0

    .line 417
    aput-object v1, v0, v6

    .line 418
    invoke-static {v2}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;->sanitizeSystemFlags(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    goto :goto_9a

    .line 412
    :cond_90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create virtual PendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    move/from16 v2, v17

    .line 421
    :goto_9a
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 422
    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    if-eqz v0, :cond_b7

    .line 424
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v1

    .line 425
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 424
    invoke-virtual {v1, v3, v11, v10, v2}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->registerIntentSender(Landroid/os/IBinder;Ljava/lang/String;II)V

    :cond_b7
    return-object v0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.GetIntentSenderWithFeature (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$GetIntentSenderWithFeature)
