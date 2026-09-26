.class public Ltop/niunaijun/blackbox/fake/service/IAutofillManagerProxy$StartSession;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IAutofillManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IAutofillManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartSession"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    value = "startSession"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_25

    const/4 p0, 0x0

    .line 52
    :goto_3
    array-length v0, p3

    if-ge p0, v0, :cond_25

    .line 53
    aget-object v0, p3, p0

    if-nez v0, :cond_b

    goto :goto_22

    .line 55
    :cond_b
    instance-of v0, v0, Landroid/content/ComponentName;

    if-eqz v0, :cond_22

    .line 56
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPid()I

    move-result v2

    invoke-static {v2}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProxyActivity(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, p3, p0

    :cond_22
    :goto_22
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 60
    :cond_25
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
