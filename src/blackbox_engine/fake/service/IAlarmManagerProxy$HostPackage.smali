.class public Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy$HostPackage;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IAlarmManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostPackage"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;
    value = {
        "canScheduleExactAlarms",
        "hasScheduleExactAlarm"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 75
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

    .line 78
    invoke-static {p3}, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;->-$$Nest$smreplaceCallingPackage([Ljava/lang/Object;)V

    .line 79
    invoke-static {p1, p2, p3}, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;->-$$Nest$sminvokeService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IAlarmManagerProxy.Set (top.niunaijun.blackbox.fake.service.IAlarmManagerProxy$Set)
