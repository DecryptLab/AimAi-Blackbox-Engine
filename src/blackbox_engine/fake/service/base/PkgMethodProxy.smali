.class public Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "PkgMethodProxy.java"


# instance fields
.field mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    .line 13
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getMethodName()Ljava/lang/String;
    .registers 1

    .line 18
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;->mName:Ljava/lang/String;

    return-object p0
.end method

.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
