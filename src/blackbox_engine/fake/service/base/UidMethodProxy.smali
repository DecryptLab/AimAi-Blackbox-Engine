.class public Ltop/niunaijun/blackbox/fake/service/base/UidMethodProxy;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "UidMethodProxy.java"


# instance fields
.field private final index:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    .line 17
    iput p2, p0, Ltop/niunaijun/blackbox/fake/service/base/UidMethodProxy;->index:I

    .line 18
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/service/base/UidMethodProxy;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getMethodName()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/base/UidMethodProxy;->name:Ljava/lang/String;

    return-object p0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    iget v0, p0, Ltop/niunaijun/blackbox/fake/service/base/UidMethodProxy;->index:I

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 29
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 30
    iget p0, p0, Ltop/niunaijun/blackbox/fake/service/base/UidMethodProxy;->index:I

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p0

    .line 32
    :cond_1c
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
