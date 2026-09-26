.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetRunningAppProcesses;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetRunningAppProcesses"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "getRunningAppProcesses"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 359
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

    .line 363
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object p0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getRunningAppProcesses(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/am/RunningAppProcessInfo;

    move-result-object p0

    if-nez p0, :cond_18

    .line 365
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 367
    :cond_18
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/am/RunningAppProcessInfo;->mAppProcessInfoList:Ljava/util/List;

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IActivityManagerProxy.GetServices (top.niunaijun.blackbox.fake.service.IActivityManagerProxy$GetServices)
