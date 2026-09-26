.class public Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy$Schedule;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IJobServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Schedule"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "schedule"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 62
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

    .line 65
    const-class p0, Landroid/app/job/JobInfo;

    invoke-static {p3, p0}, Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;->-$$Nest$smrequireArgumentIndex([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p0

    .line 66
    aget-object v0, p3, p0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 67
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBJobManager()Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/fake/frameworks/BJobManager;->schedule(Landroid/app/job/JobInfo;)Landroid/app/job/JobInfo;

    move-result-object v0

    .line 69
    aput-object v0, p3, p0

    .line 70
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
